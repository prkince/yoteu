
// Launch youtube video after page load
const loadAfterPageLoad = () => {
	window.addEventListener('load', function(){
	    const videoCloud = document.querySelector('.video-bottom');
        if (videoCloud.getAttribute('data-src')) {
            videoCloud.setAttribute('src', videoCloud.getAttribute('data-src'));
        }
	}, false)
}

export { loadAfterPageLoad } ;