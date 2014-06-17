$(document).ready(function(){

    if($('#map').length) {
      console.log("I am here")
      var handler = Gmaps.build('Google');
      handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
      var markers = handler.addMarkers(window.map_marker);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      console.log("I am done")
      });
    }
    if($('#calendar').length) {
    	console.log("a_calendar")
    	return $('#calendar').fullCalendar({
    		events: '/trips/' + window.trip_id + '.json'
    	});
    } else {
    	console.log("trips_calendar")
			return $('#trips_calendar').fullCalendar({
    		events: '/trips.json'
    	});
		}
  });
