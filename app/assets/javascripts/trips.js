$(document).ready(function(){

    if($('#map').length) {
      handler = Gmaps.build('Google');
      handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
        trips = handler.addMarkers(window.tripMarker);
        activities = handler.addMarkers(window.activityMarker);
        handler.map.centerOn([tripLat, tripLng]);
        //handler.bounds.extendWith(activities);
        //handler.fitMapToBounds();
      });
    }

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
