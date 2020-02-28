
// Launch youtube video after page load
const loadAfterPageLoad = () => {
	window.addEventListener('load', function(){
	    var iFrame = document.querySelector('iframe');
        if (iFrame.getAttribute('data-src')) {
            iFrame.setAttribute('src', iFrame.getAttribute('data-src'));
        }
	}, false)
}

export { loadAfterPageLoad } ;