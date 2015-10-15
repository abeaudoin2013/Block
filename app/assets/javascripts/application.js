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

	// function findLetter() {
		$(document).ready(function(){
		var docBuilder = [];
		var piece = $('#piece').val();
		console.log($('#imitation_typer').val());
		console.log(piece);
		var lowcasePiece = piece.toLowerCase();

		$('#imitation_typer').on("keyup", function(event){
			var charNum = event.which;
			var toLetter = String.fromCharCode(charNum);
			docBuilder.push(toLetter.toLowerCase());
			var totalLettersTyped = $('#imitation_typer').val().length
				if ($('#piece').text().slice(0, totalLettersTyped) === $('#imitation_typer').val()) {
					$('.matchingStatus').text("matching");
				} else {
					$('.matchingStatus').text("not matching");
				}
			});
		});
		// }
////
