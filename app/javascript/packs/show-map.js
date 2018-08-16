import GMaps from 'gmaps/gmaps.js';

const mapButton = document.getElementById('map-button');
const mapIndex = document.getElementById('show-map');
const cardWrapper = document.getElementById('card-map-wrapper');

const mapButtonShow = document.getElementById('map-button-show');
const mapShow = document.getElementById('map-showpage');
const carousel = document.getElementById('roevsnaps');

if (mapButton) {
  mapIndex.classList.add("hide");

  mapButton.addEventListener('click', function() {
    mapIndex.classList.toggle("hide");
    cardWrapper.classList.toggle("hide");
  });
};


const mapElementShowpage = document.getElementById('map-showpage');
if (mapElementShowpage) { // don't try to build a map if there's no div#map to inject in
  console.log("Den finder noget")
  const mapShowpage = new GMaps({ el: '#map-showpage', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElementShowpage.dataset.markers);
  mapShowpage.addMarkers(markers);
  if (markers.length === 0) {
    mapShowpage.setZoom(2);
  } else if (markers.length === 1) {
    mapShowpage.setCenter(markers[0].lat, markers[0].lng);
    mapShowpage.setZoom(14);
  } else {
    mapShowpage.fitLatLngBounds(markers);
  }
}


if (mapButtonShow) {
  mapButtonShow.addEventListener('click', function() {
    carousel.classList.toggle("hide");
    mapShow.classList.toggle("hide");
  });
};

mapShow.classList.add("hide");
