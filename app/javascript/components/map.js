const accomplit = document.getElementById("map");

if (accomplit) {
  $(document).ready(function() {
    console.log("coucou")
    var uluru = {lat: 49.291137, lng: 2.509433};
    handler = Gmaps.build('Google');
    handler.buildMap({ internal: { id: 'map' }}, function(){
      markers = handler.addMarkers({
          position: uluru
        });
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(15);
    })
  })

}
