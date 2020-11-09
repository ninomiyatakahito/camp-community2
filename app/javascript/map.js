
function initMap() {
  console.log("OK");

  var target =document.getElementById('target');
  var map;
  var tokyo = {lat: 35.681167,lng: 139.767052};
  var geocoder = new google.maps.Geocoder();

  map = new google.maps.Map(target, {
    center: tokyo,
    zoom: 15
  });
}

window.addEventListener("load", initMap); 