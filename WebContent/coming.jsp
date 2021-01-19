<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/coming.css"%>">
	<title>Coming soon</title>
</head>
<body>
<div class="main">
<div id='content'>
<div class='title'>
	<span>Launching</span>
</div>
<p>coming soon</p>
<section>
	<ul id="countdown">
		<li><span class="days timenumbers">01</span>
			<p class="timeRefDays timedescription">days</p>
		</li>
		<li><span class="hours timenumbers">00</span>
			<p class="timeRefHours timedescription">hours</p>
		</li>
		<li><span class="minutes timenumbers">00</span>
			<p class="timeRefMinutes timedescription">minutes</p>
		</li>
		<li><span class="seconds timenumbers yellow-text">00</span>
			<p class="timeRefSeconds timedescription">seconds</p>
		</li>
	</ul>
</section>
<p>Click here for <a href="#" target="_blank">Full screen view!</a></p>
</div>
</div>
<script>
	(function($) {
    $.fn.countdown = function(options, callback) {
        //custom 'this' selector
        thisEl = $(this);

        // array of custom settings
        var settings = {
            'date': null,
            'format': null
        };

        // append the settings array to options
        if (options) {
            $.extend(settings, options);
        }

        //create the countdown processing function
        function countdown_proc() {
            var eventDate = Date.parse(settings.date) / 1000;
            var currentDate = Math.floor($.now() / 1000);

            if (eventDate <= currentDate) {
                callback.call(this);
                clearInterval(interval);
            }

            var seconds = eventDate - currentDate;

            var days = Math.floor(seconds / (60 * 60 * 24));
            //calculate the number of days

            seconds -= days * 60 * 60 * 24;
            //update the seconds variable with number of days removed

            var hours = Math.floor(seconds / (60 * 60));
            seconds -= hours * 60 * 60;
            //update the seconds variable with number of hours removed

            var minutes = Math.floor(seconds / 60);
            seconds -= minutes * 60;
            //update the seconds variable with number of minutes removed

            //conditional statements
            if (days == 1) { thisEl.find(".timeRefDays").text("day"); } else { thisEl.find(".timeRefDays").text("days"); }
            if (hours == 1) { thisEl.find(".timeRefHours").text("hour"); } else { thisEl.find(".timeRefHours").text("hours"); }
            if (minutes == 1) { thisEl.find(".timeRefMinutes").text("minute"); } else { thisEl.find(".timeRefMinutes").text("minutes"); }
            if (seconds == 1) { thisEl.find(".timeRefSeconds").text("second"); } else { thisEl.find(".timeRefSeconds").text("seconds"); }

            //logic for the two_digits ON setting
            if (settings.format == "on") {
                days = (String(days).length >= 2) ? days : "0" + days;
                hours = (String(hours).length >= 2) ? hours : "0" + hours;
                minutes = (String(minutes).length >= 2) ? minutes : "0" + minutes;
                seconds = (String(seconds).length >= 2) ? seconds : "0" + seconds;
            }

            //update the countdown's html values.
            thisEl.find(".days").text(days);
            thisEl.find(".hours").text(hours);
            thisEl.find(".minutes").text(minutes);
            thisEl.find(".seconds").text(seconds);
        }

        //run the function
        countdown_proc();

        //loop the function
        interval = setInterval(countdown_proc, 1000);
    };

})(jQuery);



//Provide the plugin settings
$("#countdown").countdown({
        //The countdown end date
        date: "1 January 2022 12:00:00",

        // on (03:07:52) | off (3:7:52) - two_digits set to ON maintains layout consistency
        format: "on"
    },

    function() {
        // This will run when the countdown ends
        alert("We're Out Now");
    });


function setHeights() {
    var windowHeight = $(window).height();
    $('.slide').height(windowHeight);
}

setHeights();

$(window).resize(function() {
    setHeights();
});

function addSticky() {
    $('.slide').each(function() {
        var scrollerAnchor = $(this).offset().top;
        if (window.scrollY >= scrollerAnchor) {
            $(this).addClass('fix-it');
        } else {
            $(this).removeClass('fix-it');
        }
    });
}

$(window).scroll(function() {
    addSticky();
});
</script>
</body>
</html>