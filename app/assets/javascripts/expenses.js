$(document).ready(function(){
	$(".charge_details").hide();
	$("#hide_all_details").hide();
  // if($('#poll_form').length) {
  //   $('form').on('click', '.remove_fields', function(event){
  //     $(this).prev('input[type=hidden]').val('1');
  //     $(this).closest('fieldset').hide();
  //     event.preventDefault();
  //   });
    $('#expense_list').on('click', '#view_all_details', function(event){
    		event.preventDefault();
    		$(".charge_details").show();
    		$("#view_all_details").hide();
    		$("#hide_all_details").show();
    });

      $('#expense_list').on('click', '#hide_all_details', function(event){
    		event.preventDefault();
    		$(".charge_details").hide();
    		$("#view_all_details").show();
    		$("#hide_all_details").hide();
    });
  // }
})
