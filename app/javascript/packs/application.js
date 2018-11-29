import "bootstrap";
import $ from 'jquery';
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../plugins/flatpickr";
import { loadDynamicBannerText } from '../components/banner';

import {checkBoxeToggle} from '../components/checkBoxeToggle';

const bannerContent = document.getElementById('banner-photo')
const searchBar = document.getElementById("search-input")
const searchResult = document.getElementById("cards")
const searchCategories= document.getElementById("categories")


console.log(searchCategories);
if (bannerContent) {
  loadDynamicBannerText();
};



initMapbox();
console.log('Hello World from Webpacker');

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











