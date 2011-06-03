$(function(){
    // SWIPE LEFT EVENT
    // Triggers when a swipe event occurred moving in the left direction.
    // Triggers when a horizontal drag of 30px or more (and less than 20px vertically) occurs within 1 second duration.
    // A standard 'swipe' can be used to trigger event regardless of direction
    $("#header").bind('swipeleft',function(event, ui){
		$.mobile.changePage("#", "slideup");
        //$("#whichEvent p").replaceWith("<p>Event Triggered: Slide Left</p>");
    })
    // SWIPE RIGHT EVENT
    // Triggers when a swipe event occurred moving in the right direction.
    $("#header").bind('swiperight',function(event, ui){
		$.mobile.changePage("/twitter", "slideup");
        //$("#whichEvent p").replaceWith("<p>Event Triggered: Slide Right</p>");
    })
    // TAP HOLD
    // Triggers after a held complete touch event (close to one second).
    // A standard 'tap' event is also avliable that triggers after a quick complete touch event.
    $("#ball").bind('taphold',function(event, ui){
        //$("#whichEvent p").replaceWith("<p>Event Triggered: Tap Hold</p>");
    })
})