<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #map {
                height: 400px;  /* The height is 400 pixels */
                width: 100%;  /* The width is the width of the web page */
            }
        </style>
    </head>
    <body>
        <h3>My Google Maps Demo</h3>
        <!--The div element for the map -->
        <div id="map"></div>
        <script>
            
            // Initialize and add the map
            function initMap() {
                // The location of Uluru
                var uluru = {lat: 42.361145, lng: -71.057083};
                var options = {zoom: 9, center: uluru}
                // The map, centered at Uluru
                var map = new google.maps.Map(document.getElementById('map'), options);
                // The marker, positioned at Uluru
                var marker = new google.maps.Marker({position: uluru, map: map});
            }
        </script>
        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBUdTNV5AiadBEbprvloo3OCjrV_c3kYCo&callback=initMap">
        </script>
    </body>
</html>
