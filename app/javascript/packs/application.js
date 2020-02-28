require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

//= require jquery
//= require jquery_ujs

import { loadDynamicBannerText } from '../components/banner';
import { loadAfterPageLoad } from '../components/load_after_page';
loadAfterPageLoad();

import { hideVideoOnScroll } from '../components/hide_video_on_scroll';
hideVideoOnScroll();

if(document.getElementById("banner-typed-text")){
    loadDynamicBannerText();
}

// Support component names relative to this directory:
var componentRequireContext = require.context("components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);