$(document).on('click', '#ajouter', function () {

    var villeD = $("#villeD").val();
    var villeA = $("#villeA").val();
    var heureD = $("#heureD").val();
    var heureA = $("#heureA").val();
    var route = $("#route").val();
    var dateA = $("#dateA").val();
    var dateD = $("#dateA").val();
    var place = $("#nbrplace").val();
    var com = $("#commentaire").val();
    var user = $("#user").val();
    $.ajax({
        url: "../TrajetController",
        data: {user: user, dateA: dateA, dateD: dateD, place: place, villeD: villeD, villeA: villeA, heureD: heureD, heureA: heureA, com: com, route: route},
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            console.log("data");
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("" + textStatus);
        }
    });
});


$(document).on('click', '#showMap', function () {
    var latD = $(this).attr('latD-data');
    var lngD = $(this).attr('lngD-data');
    var latA = $(this).attr('latA-data');
    var lngA = $(this).attr('lngA-data');
    console.log("" + latA + " " + lngA + " " + latD + " " + lngD);
    function initMap() {
        var directionsService = new google.maps.DirectionsService();
        var directionsDisplay = new google.maps.DirectionsRenderer();
        var villeD = new google.maps.LatLng(latD, lngD);
        var villeA = new google.maps.LatLng(latA, lngA);
        var optionsDi = {
            zoom: 9,
            center: villeD
        };
        var map = new google.maps.Map(document.getElementById('map'), optionsDi);
        directionsDisplay.setMap(map);

            var request = {
                origin: villeD,
                destination: villeA,
                travelMode: 'DRIVING'
            };
            directionsService.route(request, function (result, status) {
                console.log(result, status);
                if (status = 'OK') {
                    directionsDisplay.setDirections(result);
                }
            });
        }
    google.maps.event.addDomListener(window, 'load', initMap());

});
