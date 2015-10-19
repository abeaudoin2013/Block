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
//= require bootstrap-sprockets
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
			clock.innerHTML =  t.minutes + ' Minutes ' + t.seconds + ' Seconds left....'

												// 'minutes: ' + t.minutes +
												// ' seconds: ' + t.seconds;
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
			
		opening();
		
		var docBuilder = [];

		$('.submitter').hide();
		
		// $('#imitation_typer').one("keyup", function(event){
		// 	setTenMins('#clockdiv');
		// });
		$('#imitation_typer').on("keyup", function(event){
			var charNum = event.which;
			var toLetter = String.fromCharCode(charNum);
			docBuilder.push(toLetter.toLowerCase());
			var totalLettersTyped = $('#imitation_typer').val().length
				if ($('#piece').text().slice(0, totalLettersTyped) === $('#imitation_typer').val()) {
					var x = $('.matchingStatus').css('background-color', 'rgba(79, 176, 184, .6)');
					x.text("matching");
					if($('#piece').text() === $('#imitation_typer').val()){
						$('.matchingStatus').text("matched!");
						$('.submitter').show(500);
					} 
				} else {
					var p = $('.matchingStatus').css('background-color', 'rgba(199, 5, 0, .6)');
					p.text("not matching");
				}
			});	
		});

function opening() {
	$("[data-click]").click(function(e) {
		$(e.currentTarget).next().toggle();
	});
}

// append by clicking .addClass


function validateText() {
	regex = /\s+/gi;
	minLen = 250;
	if (new_document.prompts_doc.value.trim().replace(regex, ' ').split(' ').length < minLen) {
		alert("Must be greater than 250");
	}
	else {
		alert("OK");
	}
}

function count(document_body) {
	var y = prompts_doc.value;
	var r = 0;
	a = y.replace(/\s/g,' ');
	a = a.split(' ');
	for (z = 0; z < a.length; z++) {
		if(a[z].length > 0)
			r++;
	}
	document.getElementById("c").value = r;
}

function count() {
	var y = five_word.value;
	var r = 0;
	a = y.replace(/\s/g,' ');
	a = a.split(' ');
	for (z = 0; z < a.length; z++) {
		if(a[z].length > 0)
			r++;
	}
	document.getElementById("d").value = r;
}

//
//Random Link!
var randomlinks=new Array()

randomlinks[0]="http://localhost:3000/prompts"
randomlinks[1]="http://localhost:3000/five"
randomlinks[2]="http://localhost:3000/imitation"

function randomlink(){
window.location=randomlinks[Math.floor(Math.random()*randomlinks.length)]
}
//

//LOGIN/SIGNUP
$(document).ready(function(){
$('#signup-btn').click(function (){
	$('#signup-form').toggle('slow');
});
});
$(document).ready(function(){
$('#login-btn').click(function() {
	$('#login-form').toggle('slow');
});
});






