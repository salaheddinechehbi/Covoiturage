

$(document).on('click', '#ajouter', function () {
    var nom = $("#nomPaye").val();
    var btn = $("#ajouter").val();
    var id = $("#paye").val();
    $.ajax({
        url: '../PayeController',
        data: {id: id, nom: nom, btn: btn},
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            loadTable(data);
            var btn = $("#ajouter").val("Ajouter");
            $("#nomPaye").val("");
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("" + textStatus);
        }
    })
});

$(document).on('click', '#deleteP', function () {
    var id = $(this).attr('data');
    swal({
        title: "Voulez-vous vraiment le supprimer?", text: "Une fois supprimer,vous pouvez pas le recuperer!",
        icon: "warning", buttons: true, dangerMode: true
    }).then((willDelete) => {
        if (willDelete) {
            $.ajax({
                url: "../PayeController",
                data: {id: id, btn: 'Delete'},
                type: 'POST',
                dataType: 'json',
                success: function (data) {
                    loadTable(data);
                }, error: function (jqXHR, textStatus, errorThrown) {
                    console.log("" + textStatus);
                }
            })
        }
    });
});

function updatePaye(id, nom) {
    $("#nomPaye").val(nom);
    $("#paye").val(id);
    $("#ajouter").val("Modifier");
}

function  loadTable(data) {
    var row = "";
    for (var i = 0; i < data.length; i++)
    {
        row += "<tr>";
        row += "<td>" + data[i].nom + "</td>";
        var func = "updatePaye(" + data[i].id + ",'" + data[i].nom + "')";
        row += '<td><button class = "btn btn-warning" onclick="' + func + '">Modifier</button></td >';
        row += '<td><button class = "btn btn-danger" id="deleteP" data="' + data[i].id + '">Suprimer</button></td >';
        row += '</tr>';
    }
    $("#table2").empty();
    $("#table2").html(row);
}

