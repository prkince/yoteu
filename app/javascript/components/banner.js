import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Handmade Ship Models", "Since 1992"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };