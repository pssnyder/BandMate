$(window).bind('enterBreakpoint320',function() {
 });

$(window).bind('exitBreakpoint320',function() {

});

$(window).bind('enterBreakpoint768',function() {

});

$(window).bind('exitBreakpoint768',function() {

});


$(window).bind('enterBreakpoint1024',function() {

});

$(window).bind('exitBreakpoint1024',function() {

});
$(window).bind('enterBreakpoint1224',function() {

});

$(window).bind('exitBreakpoint1224',function() {

});
$(window).bind('enterBreakpoint1824',function() {

});

$(window).bind('exitBreakpoint1824',function() {

});
$(window).setBreakpoints();  
$(document).ready(function(){


$("#back-top").hide();
	
// fade in #back-top
$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 80) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});

		// scroll body to 0px on click
		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});
	


//tiptip demo
$(function(){
$(".tiptip").tipTip();
});
});
