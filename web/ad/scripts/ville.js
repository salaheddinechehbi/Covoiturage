
$(document).on('click', '#ajouter', function () {

    var nomville = $("#nomVille").val();
    var lanville = $("#lang").val();
    var latville = $("#lat").val();
    var idPaye = $("#paye").val();
    var id = $("#ville").val();
    var btn = $("#ajouter").val();
    $.ajax({
        url: "../VilleController",
        data: {id:id,nomville: nomville, lang: lanville, lat: latville, paye: idPaye, btn: btn},
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
        row +='<tr>'
        row +='<td>'+data[i].nom+'</td>'
        row +='<td>'+data[i].paye.nom+'</td>'
        row +='<td>'+data[i].lng+'</td>'
        row +='<td>'+data[i].lat+'</td>'
        row +='<td><button class="btn btn-warning" id="updateV" data="'+data[i].id+'"> Modifier</button></td>'
        row +='<td><button class="btn btn-danger" id="deleteV" data="'+data[i].id+'">Suprimer</button></td>'
        row +='</tr>'
    }
    $("#table2").empty();
    $("#table2").html(row);
    init();
}

function init(){
    $("#ajouter").val("Ajouter");
    $("#lang").val("");
    $("#lat").val("");
    $("#paye").val(0);
    $("#nomVille").val("");
}
