
$(document).ready(function () {
    $("#userTable").dataTable();    
});


$(document).on('click', '#deleteU', function () {

    swal({
        title: "Voulez-vous vraiment le supprimer?", text: "Une fois supprimer,vous pouvez pas le recuperer!",
        icon: "warning", buttons: true, dangerMode: true
    }).then((willDelete) => {
        if (willDelete) {
            var id = $(this).attr("data");
            $.ajax({
                url: "../UserController",
                data: {id: id},
                type: 'POST',
                dataType: 'json',
                success: function (data, textStatus, jqXHR) {
                    console.log(data);
                    display(data);
                }, error: function (jqXHR, textStatus, errorThrown) {
                    console.log("error : " + textStatus);
                }
            });

        }
    });
});

function display(data) {
    var row = '';
    row += '<table id="userTable">';
    row += '<thead><tr><th data-field="name">Nom</th><th data-field="email">Email</th><th data-field="phone">Phone</th>'
    row += '<th data-field="number">Etat</th><th>Supprimer</th></tr></thead><tbody>';
    for (var i = 0; i < data.length; i++) {
        row += '<tr>';
        row += '<td>' + data[i].nom + '</td>';
        row += '<td>' + data[i].email + '</td>';
        row += '<td>' + data[i].tel + '</td>';
        row += '<td>' + data[i].active + '</td>';
        row += '<td><button id="deleteU" class="btn btn-custon-four btn-danger" data="' + data[i].id + '" ><span class="adminpro-icon adminpro-danger-error"></span>Supprimer</button></td>';
        row += '</tr>';
    }
    row += '</tbody>';
    row += '</table>';
    $("#divtable").empty();
    $("#divtable").html(row);
    $("#userTable").dataTable();
}

