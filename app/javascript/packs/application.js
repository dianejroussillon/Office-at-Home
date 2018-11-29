import "bootstrap";
<<<<<<< HEAD
import $ from 'jquery';
=======

import { loadDynamicBannerText } from '../components/banner';


>>>>>>> master
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../plugins/flatpickr";
import { loadDynamicBannerText } from '../components/banner';

<<<<<<< HEAD
import {checkBoxeToggle} from '../components/checkBoxeToggle';
=======
const startDate = document.getElementById("booking_start_date")
const endDate = document.getElementById("booking_end_date")

endDate.addEventListener("change", (event) => {
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value) + 86400000;
  let days = dateDiffInMilliseconds / 86400000;
  document.getElementById("days").innerText = `${days} jours`
  document.getElementById("price_per_day").innerText = `${(dateDiffInMilliseconds/ 86400000) * 75}€`
});
>>>>>>> master

const bannerContent = document.getElementById('banner-photo')
const searchBar = document.getElementById("search-input")
const searchResult = document.getElementById("cards")
<<<<<<< HEAD
const searchCategories= document.getElementById("categories")


console.log(searchCategories);
if (bannerContent) {
  loadDynamicBannerText();
};



initMapbox();
console.log('Hello World from Webpacker');
=======
const searchBanner = document.getElementById("banner-id")

if (searchBanner) {
  loadDynamicBannerText();
}
>>>>>>> master

if (searchBar) {
  searchBar.addEventListener('click', event => {
    searchResult.scrollIntoView({ block: 'start',  behavior: 'smooth' });
  })
}

console.log("je toggle");

if (searchCategories) {
  console.log("helloaaaaaaa")
  $(document).ready(function() {
    $(".category-choice").click(function(e) {
      console.log("hello");
    });
  });
}











