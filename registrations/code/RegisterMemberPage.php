<?php
class RegisterMemberPage extends Page{
}
class RegisterMemberPage_Controller extends Page_Controller{
	private static $allowed_actions = array('Register','SignUp');
	public function SignUp(){
		return Form::create(
			$this,
			'SignUp',
			FieldList::create(
				TextField::create('FirstName'),
				TextField::create('Surname'),
				EmailField::create('Email'),
				ConfirmedPasswordField::create('Password','Password'),
				CheckboxField::create('Terms', 'I accept the <a href="/terms-and-conditions">terms and conditions</a>' )
			),
			FieldList::create(FormAction::create('Register')->setTitle('Register')),
			new RequiredFields(array( 'FirstName', 'Surename', 'Password', 'Email', 'Terms'))
		);
	}

	public function Register($data, Form $form){
		if(!Member::currentUser()){
			$member = new Member();
			// Debug::show($form);
			$form->saveInto($member);
			
			if(Group::get()->filter('Title', 'Subscribed')->count() == 0){
				$group = Group::create();
				$group->Title = 'Subscribed';
				$group->write();
			} else {
				$group = Group::get()->filter('Title', 'Subscribed')->First();
			}
			if(Member::get()->filter('Email', $data['Email'])){
				$form->addErrorMessage('Email', 'That email address is already in use. <a href="Security/login">login</a>', 'bad', true, true);
				//Controller::curr()->redirect('register');
			}else{
				//has to be called before setting group
				$member->write();

				if(!$member->inGroup($group)) {
					$member->Groups()->add($group);

				}
			}
		}
		Controller::curr()->redirectBack();
	}
	public function getPlanTypes(){
		return RegistrationTypes::get()->map('UID','Title');
	}

	public function PayByCreditCard(){
		$price = $this->myEvent['Price'];
		$name = $this->myEventName;
		$data = array( 'url' => "/event/$name", 'Amount' => $price, 'Currency' => 'NZD', 'PaymentMethod' => 'PaymentExpressPxPay' ,'SecurityID' => 'f627a3374412c70623e13e4c3381dafe0cb8f3c2', 'action_processOrder' => 'Process Order' ); 
		$this->processOrder($data);
	}

	public function processOrder($data) {
    $paymentMethod = $data['PaymentMethod'];
    try {
      $paymentProcessor = PaymentFactory::factory($paymentMethod);
    } 
    catch (Exception $e) {
      return array(
        'Content' => $e->getMessage()
      );
    }

    try {

      $paymentProcessor->setRedirectURL($this->link() . "?name={$this->myEventName}&accepted=1");
      $paymentProcessor->capture($data);
    } 
    catch (Exception $e) {

      //This is where we catch gateway validation or gateway unreachable errors
      $result = $paymentProcessor->gateway->getValidationResult();
      $payment = $paymentProcessor->payment;

      return array(
        'Content' => $this->customise(array(
          'ExceptionMessage' => $e->getMessage(),
        
          'Payment' => $payment
        ))
      );
    }
  }

}