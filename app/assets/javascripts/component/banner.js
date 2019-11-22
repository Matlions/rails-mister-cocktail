import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["size the day", "drink a coktail"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
