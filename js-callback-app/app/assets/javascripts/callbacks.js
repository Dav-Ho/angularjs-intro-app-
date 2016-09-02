
function changeColors(){
  setTimeout(function(){
    document.getElementById('first').style.color = 'red';
      setTimeout(function(){
        document.getElementById('second').style.color = "green";
        setTimeout(function(){
          document.getElementById('third').style.color = 'blue';
          setTimeout(function(){
            document.getElementById('fourth').style.color = 'pink';
          }, 1000);
        },2000);
    }, 1000);
}, 1000);
}
