// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
///TIMER
	function getTimeRemaining(endtime) {
		var t = Date.parse(endtime) - Date.parse(new Date());
		var seconds = Math.floor( (t/1000) % 60);
		var minutes = Math.floor( (t/1000/60) % 60);
		var hours = Math.floor( (t/(1000*60*60)) % 24);
		return {
			'total': t,
			'hours': hours,
			'minutes': minutes,
			'seconds': seconds
		};
	}

	function initializeClock(id, endtime) {
		var clock = document.getElementById(id);
		var timeinterval = setInterval(function() {
			var t = getTimeRemaining(endtime);
			clock.innerHTML = 
												'minutes: ' + t.minutes +
												' seconds: ' + t.seconds;
			if (t.total<=0){
				clearInterval(timeinterval);
			}
		},1000);
	}

	function setTenMins(id) {
		var timeInMinutes = 10;
		var currentTime = Date.parse(new Date());
		var tenMinsLater = new Date(currentTime + timeInMinutes*60*1000);
		initializeClock(id, tenMinsLater);
	}
////
