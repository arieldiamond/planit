# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $(document).on("page:load", function(){
$(document).ready ->
	$('#trip_calendar').fullCalendar(
		events: '/trips.json'
	)
jQuery ->
	$('#trip_start_date').datepicker()
	dateFormat: 'DD,d MM, yy'
	$('#trip_end_date').datepicker()
	dateFormat: 'DD,d MM, yy'
	