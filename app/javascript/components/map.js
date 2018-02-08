// function initMap() {
//   var uluru = {lat: 49.291137, lng: 2.509433};
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 4,
//     center: uluru
//   });
//   var marker = new google.maps.Marker({
//     position: uluru,
//     map: map
//   });
// }



var handler = Gmaps.build('Google', { markers: { clusterer: undefined } });
  handler.buildMap({ internal: { id: 'map' } }, function() {
    console.log("coucou")
    markers = handler.addMarkers(
      [
        {
          "lat": 49.291137,
          "lng": 2.509433,
          "infowindow": "<h1>Aix - Marseille</h1><p><img src='https://res.cloudinary.com/wagon/image/upload/c_fill,h_200/v1500988849/nqoqw5sinlj1hqvxrfyi.jpg' height='200'></p>"
        }
      ]
    );
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
