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
//= require jquery.prettyPhoto.js
//= require waypoints.min.js
//= require bootstrap.js
//= require jquery.bootstrap-growl.min.js
//= require jquery.themepunch.plugins.min.js
//= require jquery.themepunch.revolution.min.js
//= require waypoints.min.js
//= require masonry.pkgd.min.js
//= require imagesloaded.pkgd.min.js
//= require jquery.cycle.all.js
//= require jquery.countTo.js 
//= require isotope.js
//= require jquery.countdown.min.js
//= require html5shiv.js
//= require custom.js
//= require respond.min.js

jQuery(document).ready(function() {
   jQuery('.tp-banner').revolution(
	{
		delay:9000,
		startheight:500,
		
		hideThumbs:10,
		
		navigationType:"none",	
		
		
		hideArrowsOnMobile:"on",
		
		touchenabled:"on",
		onHoverStop:"on",
		
		navOffsetHorizontal:0,
		navOffsetVertical:20,
		
		stopAtSlide:-1,
		stopAfterLoops:-1,

		shadow:0,
		
		fullWidth:"on",
		fullScreen:"off"
	});
	
	  $.validate({
	    lang: 'en',
	    modules : 'security'
	  });
});

// Cycle Slide Js 

$('#box-slider-one').cycle({ 
	fx:    'uncover',  
	speed:    200, 
	timeout:  2500 
});

/* ******************************************** */
/* plot js */
/* *************************************** */  
	
$(function() {
	/* Chart data #1 */
	var d1 = [[0, 0], [1, 1.5], [2, 3.2], [3, 4.1],[4, 5.1], [5, 5], [6, 5.3], [7, 6],[8, 6.3], [9, 7], [10, 7.5], [11, 8]];

	var options = {
		series: {
		  lines: {
			 show: true, fill: false, lineWidth:1
		  },
		  points: {
			 show: true, fill: true, lineWidth:2, radius:3, fillColor: "#fff"
		  },
		  shadowSize: 0
	   },
		colors :["#fff"],
	   grid: {
		  hoverable: true, color: "#fff", backgroundColor:null ,borderWidth:0, borderColor:"#fff", labelMargin:10
	   },
	   xaxis: {
		  ticks: 10,
		  font: {
				size: 12,
				color: ["#fff"]
			}
	   },
	   yaxis: {
		  ticks: 5,
		  font: {
				size: 12,
				color: ["#fff"]
			}
	   }, 
	   legend: {
		  backgroundOpacity:0,
		  noColumns:2,
		  labelBoxBorderColor: null
	   }
	};
	
	$("<div id='tooltip'></div>").css({
		position: "absolute",
		display: "none",
		"border-radius":"1px",
		padding: "4px 5px",
		color:"#999",
		"font-size":"11px",
		"background-color": "#fff",
		"border":"1px solid #ccc",
		"z-index": "20"
	}).appendTo("body");

});