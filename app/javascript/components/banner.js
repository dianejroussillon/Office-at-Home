import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Looking for a new place to work ?", "Bored of Coworking coffees ?"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
