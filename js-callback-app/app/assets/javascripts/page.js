
function getData() {
  var divTheaters = document.getElementById('theaters');
  divTheaters.innerHTML = "Loading...";
$.get("https://data.cityofnewyork.us/resource/2hzz-95k8.json", function(response) {
  var htmlString = '<ul>';
  for (var i = 0; i < response.length; i++) {
    htmlString += "<li onclick='changColor(this)' class='theaters'>" + response[i].name + "<ul><li>" + response[i].city + "</ul></li> ";
  }
    htmlString += "</ul>";
    divTheaters.innerHTML = htmlString;

  //wait for the response
  // var response = what we get from the api
  // then run the code we pass to it
  console.log(response);
});
}

//function filterByTheaters(){
  //var theaters = document.querySelectorAll('.theaters');
  //for (var i=0; i < markets.length; i++) {
  //  var market = markets[i];
  //  if (theaters.innerHTML).indexOf("N") === -1;){
  //    theaters.style.display='none';
  //  }
  //}
//}

function changColor(listItem){
  listItem.style.color = "blue";
}

// You do not need to set var = response. Jquery sets it up inside the function.
