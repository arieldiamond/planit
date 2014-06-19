$(document).ready(function(){
  $('#new_trip').on('click', function(){
    $('#new_trip').hide();
  })
    if($('#map').length) {

      // function createSidebarLi(json){
      //   return ("<li><a>" + json.name + "</a></li>");
      // };

      // function bindLiToMarker($li, marker){
      //   $li.on('click', function(){
      //     handler.getMap().setZoom(14);
      //     marker.setMap(handler.getMap()); //because clusterer removes map property from marker
      //     marker.panTo();
          
      //     google.maps.event.trigger(marker.getServiceObject(), 'click');
      //   })
      // };

      // function createSidebar(json_array){
      //     _.each(json_array, function(json){
      //     var $li = $( createSidebarLi(json) );
      //     $li.appendTo('#sidebar_container');
          
      //     bindLiToMarker($li, json.activities);
      //   });
      // };

      // handler = Gmaps.build('Google');
      // handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
      //   trips = handler.addMarkers(window.tripMarker);
      //   activities = handler.addMarkers(window.activityMarker);
        
      //   handler.map.centerOn([tripLat, tripLng]);
        
      //   //handler.bounds.extendWith(activities);
      //   //handler.fitMapToBounds();
        
      //   _.each(window.activityMarker, function(json, index){
      //     json.activities = activities[index];
      //   });
        
        
      //   createSidebar(window.activityMarker);
      // });
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



// handler = Gmaps.build('Google');
// handler.buildMap({ internal: {id: 'sidebar_builder'}}, function(){
//   var json_array = [
//     { lat: 40, lng: -80, name: 'Foo', infowindow: "I'm Foo" },
//     { lat: 45, lng: -90, name: 'Bar', infowindow: "I'm Bar" },
//     { lat: 50, lng: -85, name: 'Baz', infowindow: "I'm Baz" }
//   ];

//   var markers = handler.addMarkers(json_array);

//   _.each(json_array, function(json, index){
//     json.marker = markers[index];
//   });

//   createSidebar(json_array);
//   handler.bounds.extendWith(markers);
//   handler.fitMapToBounds();
// });