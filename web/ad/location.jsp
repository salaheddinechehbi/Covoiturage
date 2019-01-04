<%-- 
    Document   : location
    Created on : 1 janv. 2019, 17:16:14
    Author     : salah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <script src="vendor/js/jquery.min.js" type="text/javascript"></script>
  </head>
  <body>
  <div id="navbar"><span>Red Stapler - Geolocation API</span></div>
  <div id="wrapper">
    <button id="location-button">Get User Location</button>
    <div id="output"></div>
  </div>
  <script>
          $('#location-button').click(function(){
        
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position){
                  console.log(position);
                  var coords = position.coords.latitude +', '+position.coords.longitude;
                  document.getElementById('google_map').setAttribute('src','https://maps.google.co.ma/maps/@'+coords+'z');
                  //$.get( "http://maps.googleapis.com/maps/api/geocode/json?latlng="+ position.coords.latitude + "," + position.coords.longitude +"&sensor=false", function(data) {
                    //console.log(data);
                  //});
                  //var img = new Image();
                  //img.src = "https://maps.googleapis.com/maps/api/staticmap?center=" + position.coords.latitude + "," + position.coords.longitude + "&zoom=13&size=800x400&sensor=false";
                  //$('#output').html(img);
                });
                
            }
          });
  </script>
  </body>
</html>
