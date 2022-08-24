import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Handmade Ship Models", "Since 2010"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };