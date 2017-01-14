
function initMap(){
  var places = [
    {lat: 40.705940, lng: -73.9984296, description: 'Brooklyn Bridge'},
    {lat: 40.708603, lng:-74.0139742, description: "Our home at LMHQ"},
    {lat: 40.7024041, lng:-74.0103256, description: "Our home at LMHQ"},
    {lat: 40.6963691, lng:-74.0040779, description: "Our home at LMHQ"},
    {lat:40.711865, lng:-74.0149269, description: "Our home at LMHQ"}
  ];

  places.forEach(function(place) {
    console.log(place);
    var infowindow = new google.maps.InfoWindow({
      content: place.description
    });

    var marker = new google.maps.Marker({
      position: {lat: place.lat, lng: place.lng},
      map: map
    });

    marker.addListener('click', function() {
      infowindow.open(map, marker);
    });
  });
}

var map = new google.maps.Map(document.getElementById('map'), {
  zoom: 11,
  center: places[0]
});

for (i=0; i < places.length; i++){
  var infowindow = new google.maps.InfoWindow({
    content: places[i].description
  });

  var marker = new google.maps.Marker({
    position: places[i],
    map: map,
  });

  google.maps.event.addListener(marker, 'click', function(){
    console.log(this.html);
    infowindow.setContent(places[i].description);
    infowindow.open(map, this);
  });
}
};
