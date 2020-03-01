import $ from 'jquery';

const scrollAnimation = () => {
	$(document).ready(function() {
	    let images = $("#ships-list-gallery-id > .ola").hide(), x = 1;
	    let showMore = $('#showMore');
	    let showLess = $('#showLess');
	    let funcs = {
	       'showMore': function() { ++x; show(); },
	       'showLess': function() { --x; show(); }
	    }
	    $('.controls').on('click', 'i', function(e){
	        return (funcs[e.target.id] || function(){})(), false;
	    });
	    function show() {
	        images.hide().filter(function(i){ return i < (x * 3); }).show();
	        showMore.show().filter(function(){ return !images.is(':hidden'); }).hide();
	        showLess.show().filter(function(){ return x === 1; }).hide();
	    }
	    show();
	});
}

export { scrollAnimation };

