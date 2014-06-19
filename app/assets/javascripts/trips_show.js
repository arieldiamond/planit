$(document).ready(function(){
  if($("#map").length) {
	      function bindLiToMarker($li, marker){
        $li.on('click', function(){
          handler.getMap().setZoom(13);
          marker.setMap(handler.getMap()); //because clusterer removes map property from marker
          marker.panTo();
          
          google.maps.event.trigger(marker.getServiceObject(), 'click');
        })
      };

      function createSidebar(json_array){
          _.each(json_array, function(json){
          var $li = $( createSidebarLi(json) );
          $li.appendTo('#sidebar_container');
          
          bindLiToMarker($li, json.activities);

        });
      };

      function createTripbar(json_array){
          _.each(json_array, function(json){
          var $li = $( createSidebarLi(json) );
          $li.appendTo('#sidebar_container');
          
          bindLiToMarker($li, json.trips);

        });
      };

      handler = Gmaps.build('Google');
      handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
        trips = handler.addMarkers(window.tripMarker);
        activities = handler.addMarkers(window.activityMarker);
        
        handler.map.centerOn([tripLat, tripLng]);
        
        handler.bounds.extendWith(activities);
        handler.bounds.extendWith(trips);
        handler.fitMapToBounds();
        
        _.each(window.activityMarker, function(json, index){
          json.activities = activities[index];
        });
        
        _.each(window.tripMarker, function(json, index){
          json.trips = trips[index];
        });
        
        createTripbar(window.tripMarker);
        createSidebar(window.activityMarker);
        
      });
   
}
 });