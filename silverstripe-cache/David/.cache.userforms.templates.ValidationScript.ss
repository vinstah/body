<?php
$val .= '(function($) {
	$(document).ready(function() {
		var messages = {';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
if ($scope->locally()->hasValue('ErrorMessage', null, true)&&!$scope->locally()->hasValue('SetsOwnError', null, true)) { 
if ($scope->locally()->XML_val('ClassName', null, true)=='EditableCheckboxGroupField') { 
$val .= '
			\'';

$val .= $scope->locally()->obj('Name', null, true)->XML_val('JS', null, true);
$val .= '[]\': \'';

$val .= $scope->locally()->obj('ErrorMessage', null, true)->XML_val('JS', null, true);
$val .= '\'';

if (!$scope->locally()->hasValue('Last', null, true)) { 
$val .= ',';


}

}else { 
$val .= '
			\'';

$val .= $scope->locally()->obj('Name', null, true)->XML_val('JS', null, true);
$val .= '\': \'';

$val .= $scope->locally()->obj('ErrorMessage', null, true)->XML_val('JS', null, true);
$val .= '\'';

if (!$scope->locally()->hasValue('Last', null, true)) { 
$val .= ',';


}

}

}

}; $scope->popScope(); 
$val .= '
		};

		$(document).on("click", "input.text[data-showcalendar]", function() {
			$(this).ssDatepicker();

			if($(this).data(\'datepicker\')) {
				$(this).datepicker(\'show\');
			}
		});

		$("#Form_Form").validate({
			ignore: \':hidden\',
			errorClass: "required",
			errorElement: "span",
			errorPlacement: function(error, element) {
				error.addClass(\'message\');

				if(element.is(":radio") || element.parents(".checkboxset").length > 0) {
					error.insertAfter(element.closest("ul"));
				} else {
					error.insertAfter(element);
				}
			},
			messages: messages,
			rules: {
				';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					';

if ($scope->locally()->hasValue('Validation', null, true)) { 
if ($scope->locally()->XML_val('ClassName', null, true)=='EditableCheckboxGroupField') { 
$val .= '
						\'';

$val .= $scope->locally()->obj('Name', null, true)->XML_val('JS', null, true);
$val .= '[]\': ';

$val .= $scope->locally()->obj('ValidationJSON', null, true)->XML_val('RAW', null, true);
$val .= '
					';


}else { 
$val .= '
						\'';

$val .= $scope->locally()->obj('Name', null, true)->XML_val('JS', null, true);
$val .= '\': ';

$val .= $scope->locally()->obj('ValidationJSON', null, true)->XML_val('RAW', null, true);
$val .= ',
					';


}

}
$val .= '
				';


}; $scope->popScope(); 
$val .= '
			},
			';

if ($scope->locally()->hasValue('EnableLiveValidation', null, true)) { 
$val .= '
				// Enable live validation
				onfocusout : function(element) { this.element(element); }
			';


}
$val .= '
		});
		';

if ($scope->locally()->hasValue('HideFieldLabels', null, true)) { 
$val .= '
			// Hide field labels (use HTML5 placeholder instead)
			$("#Form_Form label.left").each(function() {
				$("#"+$(this).attr("for"))
					.attr("placeholder", $(this).text());
				$(this).remove();
			});
			Placeholders.init();
		';


}
$val .= '
	});
})(jQuery);
';

