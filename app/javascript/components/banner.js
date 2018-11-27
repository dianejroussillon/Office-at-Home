import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Want to find a place to work ?", "Rent a Flat !"],
    typeSpeed: 50,
    loop: true
  });
};

export { loadDynamicBannerText };
