import "bootstrap";
import $ from 'jquery';

import { loadDynamicBannerText } from '../components/banner';

import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../plugins/flatpickr";

const searchBar = document.getElementById("search-input");
const searchResult = document.getElementById("cards");
const dynamicBanner = document.getElementById("banner-typed-text");
const startDate = document.getElementById("booking_start_date");
const endDate = document.getElementById("booking_end_date");
const choiceCategory = document.getElementById("choice-category")
const editCategory = document.getElementById("edit-category") //class à rajotuer dans edit


initMapbox();

if (searchBar) {
 searchBar.addEventListener('submit', event => {
  console.log("scroll");
   searchResult.scrollIntoView({ block: 'start',  behavior: 'smooth' });
 });
}


if(dynamicBanner) {
  loadDynamicBannerText();
}


if(endDate) {
  endDate.addEventListener("change", (event) => {
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value) + 86400000;
  let days = dateDiffInMilliseconds / 86400000;
  document.getElementById("days").innerText = `${days} jours`
  document.getElementById("price_per_day").innerText = `${(dateDiffInMilliseconds/ 86400000) * 75}€`
});
}

if (choiceCategory || editCategory) {
$(document).ready(function() {
 $(".category-choice").click(function() {
    $(this).toggleClass("active");
 });
});
}

