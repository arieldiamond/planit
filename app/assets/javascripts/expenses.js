$(document).ready(function(){
	$(".charge_details").hide();
	$("#hide_all_details").hide();

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
})

$(document).ready(function(){
  $("#new_expense_form").ready(function(event){
    $("input#new_expense_submit_button").prop('disabled', true);

    $("#check_your_math").click(function() {
      var total_cost_in_cents = parseInt($("#expense_cost_in_cents").val());
      var payment_fields = ($(".payments_in_cents"))
      var sum_of_payments = 0
      for (var i=0; i < payment_fields.length; i++) {
        sum_of_payments += parseInt(payment_fields[i].value);
      };
      // $("#total_cost_in_cents").append(total_cost_in_cents)
      // $("#sum_of_payments").append(sum_of_payments)
      if (total_cost_in_cents === sum_of_payments) {
        alert("HOORAY")
        $("input#new_expense_submit_button").prop('disabled', false);
      } else {
        alert("You are terrible at math. I guess you should try again. But it's not looking good for you.")
      }
    });

      // alert("Hey there!");
  });
});
