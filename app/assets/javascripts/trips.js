$(document).ready(function(){
    if($('#map').length) {
      var handler = Gmaps.build('Google');
      handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
      var markers = handler.addMarkers(window.map_marker);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      });
    }
    if($('#calendar').length) {
    	return $('#calendar').fullCalendar({
        dayClick: function() {
          console.log($(this).html);
        
        $(this).css('background-color', 'red');

    },
   
    		events: '/trips/' + window.trip_id + '.json'
    	});
    } else {
    	console.log("trips_calendar")
			return $('#trips_calendar').fullCalendar({
    		events: '/trips.json'
    	});
		}
  });
// $('#calendar').fullCalendar({
//     eventClick: function(calEvent, jsEvent, view) {
//         window.location = "http://www.domain.com?start=" + calEvent.start;

//     }
// });