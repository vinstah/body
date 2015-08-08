<?php
class UpcomingEventHolder extends Page{

	private static $db = array(
	);

	private static $has_one = array();

	private static $has_many = array();

	private static $many_many = array();

	private static $belongs_many_many = array();

	private static $many_many_extraFields = array();

	private static $casting = array();

	private static $default_sort = '';

	private static $field_labels = array();

	private static $summary_fields = array();

	private static $required_fields = array(); //enforced through the "validate" method

	private static $searchable_fields = array();

	private static $allowed_children = array("SiteTree");

	private static $default_child = "Page";

	private static $default_parent = null;

	private static $can_be_root = true;

	private static $hide_ancestor = null;
}

class UpcomingEventHolder_Controller extends Page_Controller{

	private $myEventName = "";
	private $inRegistration;
	private $waitingList;
	private $myEvent = array();
	private $inPayment;
	private $success ="";
	private $accepted = "";
	private $registered = false;
	private $isFree = false;
	private static $allowed_actions = array(
		'RefreshPage',
		'getRegistered'
	);
  	
  	function init() {
    	parent::init();
    	$this->myEventName = (isset($_GET['name'])) ? $_GET['name'] : '';
    	//register
    	$this->inRegistration = (isset($_GET['registration']) && $_GET['registration'] == 1) ? $_GET['registration'] : '';
    	//waiting list
    	if(isset($_GET['registration']) && $_GET['registration'] == 2){

    		$this->waitingList = true;
    	} 
    	$this->inPayment = (isset($_GET['payment'])) ? $_GET['payment'] : '';
    	$obj = MagnetismConnect::magnetism_connect_singleton();
        $this->myEvent = $obj->getEventByName($this->myEventName);
        $this->success = (isset($_GET['success']))? 'Yes' :'';
        $this->accepted = (isset($_GET['accepted']) )? 'Yes': '';
        // if($this->inPayment){
        // 	$this->RegisterForEvent();
        // }
        if($this->inPayment == "creditcard"){
        	$this->PayByCreditCard();
        }
        if($this->inPayment == "invoice"){
        	$this->RequestInvoice();
        }
        if($this->accepted == 'Yes'){
        	$this->RegisterForEvent();
        }
        if($this->myEvent['Price'] == 0){
        	$this->isFree = true;
        	if($this->inRegistration){
     
        		return $this->RegisterForEvent();
        	}
			
		}
        $this->isRegistered();
  	}

  	//wrapper method to decode json for template
	public function MyEvent(){
		if ($this->myEvent){
			return new ArrayData($this->myEvent);
		} else {
			return false;
		}
    }

    public function isRegistered(){
    	if ($member = Member::CurrentUser()){
			if ($member->inGroup('Administrators')){
				return;
			}        
	//if(!Permission::check('ADMIN')){
            $ID = $member->MagnetismID;

            $obj = MagnetismConnect::magnetism_connect_singleton();
            $result = $obj->getEventsByContactWithDetails($ID);
            if($result){           	
                foreach($result as $indexNumber => $eventArray) {
                	if($eventArray['Id'] == $this->myEvent['Id']){        
                		$this->registered = true;
                		// return true;
                	}
                }                
            }
	    }	    
    }

    public function getRegistered(){
    	return $this->registered;
    	// return true;
    }
	// 	return new ArrayList($event);
	// }
    public function RegisterButton(){
    	//Controller::redirect($this->Link('?success=1'));
    }
	

	public function InRegistration(){
		if($this->inRegistration){
			
			if($this->myEvent['Price'] == 0){
				$this->RegisterForEvent();
				//$this->redirect($this->AbsoluteURL );
				$this->isFree = true;
			}
		}
		return $this->inRegistration;
	}
	public function waitingList(){
		if($this->waitingList != true){
			return false;
		}

		//Email to LDC
		$member = Member::currentUser()->Email;
        $email = new Email();
        $email->setTo('bookings@ldc.govt.nz');
        $email->setFrom($member);
        $email->setSubject("Addition to Event Waiting List");
        $messageBody = "Member " . $member . " (" . Member::currentUser()->FirstName . " " . Member::currentUser()->LastName . ")";
        $messageBody .= " has requested to be added to the waiting list for the event '" . $this->myEventName . "'.";

        $email->setBody($messageBody);
        $email->send();

        //Email to User
        $member = Member::currentUser()->Email;
        $email = new Email();
        $email->setTo($member);
        $email->setFrom('bookings@ldc.govt.nz');
        $email->setSubject("You've been added to the waiting list");
        $messageBody = "Hi " . Member::currentUser()->FirstName . ",<br /><br />";
        $messageBody .= "Thank you for registering your interest for the upcoming event '" . $this->myEventName . "'. ";
        $messageBody .= "We've added you to the waiting list and will let you know when a space becomes available.<br /><br />";
		$messageBody .= "Leadership Development Centre <br />";
        $email->setBody($messageBody);
        $email->send();

        return true;

		//return true;
	}
	public function DidSucceed(){
		if ($this->success == 'Yes'){
			return true;
		} else {
			return false;
		}
	}
	public function RequestInvoice(){
		$this->RegisterForEventByInvoice();
		$member = Member::currentUser()->Email;

        $email = new Email();

        $email->setTo('info@ldc.govt.nz');
        $email->setFrom($member);
        $email->setSubject("Invoice Request");

        $messageBody = "";
	$messageBody = "Member " . $member . " (" . Member::currentUser()->FirstName . " " . Member::currentUser()->LastName . ")";
        $messageBody .= " has requested an invoice for the event '" . $this->myEventName . "'.";
        $email->setBody($messageBody);
        $email->send(Member::currentUser()->Email);
        return true;
	}

	public function PayByCreditCard(){
		$price = $this->myEvent['Price'];
		$name = $this->myEventName;
		$data = array( 'url' => "/event/$name", 'Amount' => $price, 'Currency' => 'NZD', 'PaymentMethod' => 'PaymentExpressPxPay' ,'SecurityID' => 'f627a3374412c70623e13e4c3381dafe0cb8f3c2', 'action_processOrder' => 'Process Order' ); 
		$this->processOrder($data);
	}
	// public function PayByCreditCard(){
	// 	return "#";
	// }

	public function RegisterForEvent(){
		if ($member = Member::CurrentUser()){
			$id = "";
			$eventId = $this->myEvent['Id'];
			$contactId = $member->MagnetismID;
			$groupId = "";
			$registrationDate = Date('Y-m-d');
			$paymentDate = $registrationDate;
			$price = $this->myEvent['Price'];
			$statusReason = 1;
			$statusReasonName = "placeholder string";
			$paid = true;
			$attended = true;
			$details = "placeholder string";
			$sendArray = array(
				"Id" => $id,
				"EventId" => $eventId,
				"ContactId"=> $contactId,
				"GroupId"=> $groupId,
				"RegistrationDate"=> $registrationDate,
				"PaymentDate"=> $paymentDate,
				"Price"=> $price,
				"StatusReason"=> $statusReason,
				"StatusReasonName"=> $statusReasonName,
				"Paid"=> $paid,
				"Attended"=> $attended,
				"Details"=>  $details
			);

			$obj = MagnetismConnect::magnetism_connect_singleton();
			$result = $obj->registerForEvent($sendArray);
			
			if($result || $member->ID=1){
				
		    	Controller::redirect($this->Link("?name=$this->myEventName&success=1"));
			}
		}
	}

	public function RegisterForEventByInvoice(){
		
		if ($member = Member::CurrentUser()){
			$id = "";
			$eventId = $this->myEvent['Id'];
			$contactId = $member->MagnetismID;
			$groupId = "";
			$registrationDate = Date('Y-m-d');
			$paymentDate = $registrationDate;
			$price = $this->myEvent['Price'];
			$statusReason = 1;
			$statusReasonName = "placeholder string";
			$paid = false;
			$attended = true;
			$details = "placeholder string";
			$sendArray = array(
				"Id" => $id,
				"EventId" => $eventId,
				"ContactId"=> $contactId,
				"GroupId"=> $groupId,
				"RegistrationDate"=> $registrationDate,
				"PaymentDate"=> $paymentDate,
				"Price"=> $price,
				"StatusReason"=> $statusReason,
				"StatusReasonName"=> $statusReasonName,
				"Paid"=> $paid,
				"Attended"=> $attended,
				"Details"=>  $details
			);

			$obj = MagnetismConnect::magnetism_connect_singleton();
			$result = $obj->registerForEvent($sendArray);
			
			if($result){
				
		    	Controller::redirect($this->Link("?name=$this->myEventName&success=1"));
			}
		}
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
	public function deregisterForEvent($contactID, $eventID){
			/*
			[registrationRecordId] => 6111f41a-2a61-e311-9bbb-00155d04dc08
    		[contactId] => d1f4831a-2361-e311-9bbb-00155d04dc08
    		[eventId] => 669e567f-cc4f-e311-9bbb-00155d04dc08
			*/
	}

	public function RefreshPage(){
		Controller::redirect($_SERVER["REQUEST_URI"]);
	}

	public function IsFreeEvent(){
		if((float)$this->myEvent['Price'] == (float)0){
			//$this->RegisterForEvent();
			//$this->redirect($this->AbsoluteURL );
			$this->isFree = true;

			return true;
		}
	}

}
