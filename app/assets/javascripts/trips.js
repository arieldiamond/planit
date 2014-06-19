$(document).ready(function(){
  $('#new_trip').on('click', function(){
    $('#new_trip').hide();
  })
  if($('#calendar').length) {
  	return $('#calendar').fullCalendar({
  		events: '/trips/' + window.trip_id + '.json'
  	});
  } 
  if ($('#trips_calendar').length) {
    console.log("trips_calendar")
		return $('#trips_calendar').fullCalendar({
  		events: '/trips.json'
  	});
	}
});
