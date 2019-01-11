
$(document).on('click', '#ajouter', function () {

    var nomville = $("#nomVille").val();
    var lanville = $("#lang").val();
    var latville = $("#lat").val();
    var idPaye = $("#paye").val();
    var id = $("#ville").val();
    var btn = $("#ajouter").val();
    $.ajax({
        url: "../VilleController",
        data: {id: id, nomville: nomville, lang: lanville, lat: latville, paye: idPaye, btn: btn},
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            loadTable(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("" + textStatus);
        }
    });
});

$(document).on('click', '#deleteV', function () {
    var id = $(this).attr('data');
    swal({
        title: "Voulez-vous vraiment le supprimer?", text: "Une fois supprimer,vous pouvez pas le recuperer!",
        icon: "warning", buttons: true, dangerMode: true
    }).then((willDelete) => {
        if (willDelete) {
            $.ajax({
                url: "../VilleController",
                data: {id: id, btn: "Delete"},
                dataType: 'json',
                success: function (data, textStatus, jqXHR) {
                    loadTable(data);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log(textStatus);
                }
            });
        }
    });
});

$(document).on('click', '#updateV', function () {
    var id = $(this).attr('data');
    $.ajax({
        url: "../VilleController",
        data: {id: id, btn: "Find"},
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            $("#ajouter").val("Modifier");
            $("#lang").val(data.lng);
            $("#ville").val(data.id);
            $("#lat").val(data.lat);
            $("#paye").val(data.paye.id);
            $("#nomVille").val(data.nom);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });
});


function loadTable(data)
{
    var row = "";
    for (var i = 0; i < data.length; i++)
    {
        row += '<tr>'
        row += '<td>' + data[i].nom + '</td>'
        row += '<td>' + data[i].paye.nom + '</td>'
        row += '<td>' + data[i].lng + '</td>'
        row += '<td>' + data[i].lat + '</td>'
        row += '<td><button class="btn btn-warning" id="updateV" data="' + data[i].id + '"> Modifier</button></td>'
        row += '<td><button class="btn btn-danger" id="deleteV" data="' + data[i].id + '">Suprimer</button></td>'
        row += '<td><button class="btn btn-primary" id="showMap" lat-data="' + data[i].lat + '" lng-data="' + data[i].lng + '">Show Map</button></td>'
        row += '</tr>'
    }
    $("#table2").empty();
    $("#table2").html(row);
    init();
}

function init() {
    $("#ajouter").val("Ajouter");
    $("#lang").val("");
    $("#lat").val("");
    $("#paye").val(0);
    $("#nomVille").val("");
}

function initMap2() {
    var directionsService = new google.maps.DirectionsService();
    var directionsDisplay = new google.maps.DirectionsRenderer();
    var casa = new google.maps.LatLng(33.58831, -7.61138);
    var kech = new google.maps.LatLng(31.5988796, -8.0343503);
    var optionsDi = {
        zoom: 9,
        center: kech
    };
    var map = new google.maps.Map(document.getElementById('map'), optionsDi);
    directionsDisplay.setMap(map);

    function calculateRoute() {
        //var d = [];
        //d = des.split(",");
        var request = {
            origin: kech,
            destination: casa,
            travelMode: 'DRIVING'
        };
        directionsService.route(request, function (result, status) {
            console.log(result, status);
            if (status = 'OK') {
                directionsDisplay.setDirections(result);
            }
        });
    }
    document.getElementById('get').onclick = function () {
        calculateRoute();
    };

}

function initMap() {
    var casa = new google.maps.LatLng(33.58831, -7.61138);
    var kech = new google.maps.LatLng(31.5988796, -8.0343503);
    var options = {zoom: 8, center: kech}
    var map = new google.maps.Map(document.getElementById('map'), options);
    var marker = new google.maps.Marker({position: kech, map: map});
    //var marker1 = new google.maps.Marker({position: casa, map: map});
}


$(document).on('click', '#showMap', function () {
    var lat = $(this).attr('lat-data');
    var lng = $(this).attr('lng-data');
    console.log(" " + lat + " " + lng);
    function initMap() {
        var kech = new google.maps.LatLng(lat, lng);
        var options = {zoom: 8, center: kech}
        var map = new google.maps.Map(document.getElementById('map'), options);
        var marker = new google.maps.Marker({position: kech, map: map});
    }
    google.maps.event.addDomListener(window, 'load', initMap());
});