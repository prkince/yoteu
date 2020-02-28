import $ from 'jquery';

const hideVideoOnScroll = () => {
	$(window).bind('scroll', function() {
	     if ($(window).scrollTop() > 500) {
	         $('#video-edou-id').hide();
	     }
	     else {
	         $('#video-edou-id').show();
	     }
	});
}

export { hideVideoOnScroll };
