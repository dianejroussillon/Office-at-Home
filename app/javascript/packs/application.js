import "bootstrap";

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import "../plugins/flatpickr";

initMapbox();
console.log('Hello World from Webpacker');


const searchBar = document.getElementById("search-input")
const searchResult = document.getElementById("cards")


if (searchBar) {
  searchBar.addEventListener('click', event => {
    searchResult.scrollIntoView({ block: 'start',  behavior: 'smooth' });
  })
}

const startDate = document.getElementById("booking_start_date")
const endDate = document.getElementById("booking_end_date")

endDate.addEventListener("change", (event) => {
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value) + 86400000;
  let days = dateDiffInMilliseconds / 86400000;
  document.getElementById("days").innerText = `${days} jours`
  document.getElementById("price_per_day").innerText = `${(dateDiffInMilliseconds/ 86400000) * 75}€`
});




