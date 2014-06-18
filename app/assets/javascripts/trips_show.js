$(document).ready(function(){
		$(".trip_show_details").hide();

    $('#trip_show_page').on('click', '#calendar_bar', function(event){
  		event.preventDefault();
  		$("#calendar_div").slideToggle(300);
    });

    $('#trip_show_page').on('click', '#expense_list_bar', function(event){
  		event.preventDefault();
  		$("#expense_list").slideToggle(300);
    });

    $('#trip_show_page').on('click', '#map_information_bar', function(event){
  		event.preventDefault();
  		$("#map_information").slideToggle(300);
    });

    $('#trip_show_page').on('click', '#activity_information_bar', function(event){
  		event.preventDefault();
  		$("#activity_information").slideToggle(300);
    });

    $('#trip_show_page').on('click', '#poll_list_bar', function(event){
  		event.preventDefault();
  		$("#poll_list").slideToggle(300);
    });

});