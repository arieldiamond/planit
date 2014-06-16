// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.ui.datepicker
//= require fullcalendar
//= require underscore
//= require gmaps/google
//= require_tree .

$('#calendar').fullCalendar({
	header: {
		left: 'prev,next today',
		center: 'title',
		right: 'month,agendaWeek,agendaDay'
	},
	defaultDate: '2014-06-12',
	editable: true,
	trips: [
		{
			title: 'All Day Event',
			start: '2014-06-01'
		},
		{
			title: 'Long Event',
			start: '2014-06-07',
			end: '2014-06-10'
		},
		{
			id: 999,
			title: 'Repeating Event',
			start: '2014-06-09T16:00:00'
		},
		{
			id: 999,
			title: 'Repeating Event',
			start: '2014-06-16T16:00:00'
		},
		{
			title: 'Meeting',
			start: '2014-06-12T10:30:00',
			end: '2014-06-12T12:30:00'
		},
		{
			title: 'Lunch',
			start: '2014-06-12T12:00:00'
		},
		{
			title: 'Birthday Party',
			start: '2014-06-13T07:00:00'
		},
		{
			title: 'Click for Google',
			url: 'http://google.com/',
			start: '2014-06-28'
		}
	]
});
