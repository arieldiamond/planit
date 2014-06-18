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
  		$("#map_information").slideToggle(100);

      function createSidebarLi(json){
        return ("<li><a>" + json.name + "</a></li>");
      };

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