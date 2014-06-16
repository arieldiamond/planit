$(document).ready(function(){
    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers(window.map_marker);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    });
    // return $('#calendar').fullCalendar({
    // events: '/trips.json'
    // });
    return $('#calendar').fullCalendar({
    events: '/trips/' + window.trip_id + '.json'
    });
  });
