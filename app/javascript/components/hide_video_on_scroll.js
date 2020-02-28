import $ from 'jquery';

const hideVideoOnScroll = () => {
	$(window).bind('scroll', function() {
	     if ($(window).scrollTop() > 500) {
	         $('#video-edou-id').hide();
	         console.log('disappear')
	     }
	     else {
	         $('#video-edou-id').show();
	         console.log('appear')
	     }
	});
}

export { hideVideoOnScroll };
