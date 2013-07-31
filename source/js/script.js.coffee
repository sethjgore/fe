$ ->
	$(window).load ->

		$('html').addClass('isReady');
		$('.contain-to-grid').one("webkitTransitionEnd otransitionend transitionend").addClass('');

	$(document).foundation();
	
