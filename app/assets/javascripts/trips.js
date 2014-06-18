$(document).ready(function(){

    // if($('#map').length) {
    //   console.log("I am a map")
    //   var handler = Gmaps.build('Google');
    //   handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    //   var markers = handler.addMarkers(window.map_marker);
    //   handler.bounds.extendWith(markers);
    //   handler.fitMapToBounds();
    //   });
    // }
    if($('#calendar').length) {
    	return $('#calendar').fullCalendar({
      //   dayClick: function() {
      //     $(this).css('background-color', 'red');

      //     window.location = "localhost:3000/trips/" + window.trip_id + "/activities/new"
      //     console.log("day")
      //     //jquery UI

      // },
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
