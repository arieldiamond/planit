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
  var checkMath = function() {
    var total_cost_in_cents = parseInt($("#expense_cost_in_cents").val());
    console.log(total_cost_in_cents)
    var payment_fields = ($(".payments_in_cents"))
    var sum_of_payments = 0
    for (var i=0; i < payment_fields.length; i++) {
      sum_of_payments += parseInt(payment_fields[i].value);
    };
    console.log(sum_of_payments)
    if (total_cost_in_cents === sum_of_payments) {
      return true;
    } else {
      return false;
    }
  };

// "input#new_expense_submit_button"
  $("#new_expense_form").on('submit', function(event) {
    event.preventDefault();
    if (checkMath()) {
      var url = $(this).attr("action");
      console.log(url);
      var data = $(this).serialize();
      console.log(data);
      $.post(url, data, function(response){
        $('#limit').val('My Limit');
        $("#secret_redirect_form").submit();
      })
    } else {
      alert("Your payments should add up to the total.")
    };

  });



});
