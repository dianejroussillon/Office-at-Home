import "../plugins/flatpickr"


/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


//recuperer le prix unitaire

const startDate = document.getElementById("booking_start_date")

const endDate = document.getElementById("booking_end_date")

endDate.addEventListener("change", (event) => {
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value) + 86400000;
  let days = dateDiffInMilliseconds / 86400000;
  document.getElementById("days").innerText = `${days} jours`
  document.getElementById("price_per_day").innerText = `${(dateDiffInMilliseconds/ 86400000) * 75}€`
});



// Je recupere la date1
// const dates = document.getElementsByClassName("form-control string optional datepicker flatpickr-input")
// console.log(dates[0].value)



// je recupere la date 2 et tu cree un objet Date avec JS


// On soustrait la date 2 - date 1 + 1 multiplier par price perday



// on affiche
