require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";

//= require jquery
//= require jquery_ujs

import { loadDynamicBannerText } from '../components/banner';

if(document.getElementById("banner-typed-text")){
    loadDynamicBannerText();
}