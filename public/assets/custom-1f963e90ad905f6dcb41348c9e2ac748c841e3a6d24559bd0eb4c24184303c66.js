$(document).ready(function(){$(".box").waypoint(function(){$(this).addClass("animation"),$(this).addClass("fadeInUp")},{offset:"100%"}),$(".s-counter").waypoint(function(){$(this).hasClass("stop-counter")||($(this).countTo(),$(this).addClass("stop-counter"))},{offset:"100%"}),$(".sidebar-link ul a").waypoint(function(){$(this).addClass("animation"),$(this).addClass("fadeInLeft")},{offset:"100%"}),$(".feature .feature-details").waypoint(function(){$(this).addClass("animation"),$(this).addClass("fadeIn")},{offset:"80%"}),$(".service .service-item").waypoint(function(){$(this).addClass("animation"),$(this).addClass("bounceInUp")},{offset:"80%"}),$(".pricing .p-plan-item").waypoint(function(){$(this).addClass("animation"),$(this).addClass("flipInY")},{offset:"80%"}),$(".testimonial .testimonial-item").waypoint(function(){$(this).addClass("animation"),$(this).addClass("fadeInRight")},{offset:"80%"}),$(".blog-post .entry").waypoint(function(){$(this).addClass("animation"),$(this).addClass("fadeIn")},{offset:"80%"}),$(".landing .landing-item").waypoint(function(){$(this).addClass("animation"),$(this).addClass("fadeInUp")},{offset:"100%"}),$(".resume .resume-details").waypoint(function(){$(this).addClass("animation"),$(this).addClass("fadeInRight")},{offset:"90%"}),$(".grid .grid-entry").waypoint(function(){$(this).addClass("animation"),$(this).addClass("fadeInUp")},{offset:"90%"})}),$(".grid-img-link").prettyPhoto({overlay_gallery:!1,social_tools:!1}),$(".aboutus-skill .progress-bar").waypoint(function(){$(this).hasClass("progress-stop")||(setTimeout(function(){$(".aboutus-skill .progress-bar").each(function(){var t=$(this),s=t.attr("data-end"),i=0,n=setInterval(function(){i>=s?clearInterval(n):(i+=2,t.css("width",i+"%"))},40)})},40),$(this).addClass("progress-stop"))},{offset:"100%"}),$(".my-tooltip").tooltip(),$(document).ready(function(){$(".slide-up").hover(function(){$(this).children(".movetoup").slideDown(500)},function(){$(this).children(".movetoup").slideUp(500)}),$(".slide-down").hover(function(){$(this).children(".movetodown").slideDown(500)},function(){$(this).children(".movetodown").slideUp(500)})}),$(document).ready(function(){$(".totop").hide(),$(window).scroll(function(){$(this).scrollTop()>300?$(".totop").fadeIn():$(".totop").fadeOut()}),$(".totop a").click(function(t){return t.preventDefault(),$("html, body").animate({scrollTop:0},"slow"),!1})});