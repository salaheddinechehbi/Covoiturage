
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
    for (var i = 0; i < data.length; i++) {
        row += '<tr>';
        row += '<td>' + data[i].nom + '</td>';
        row += '<td>' + data[i].email + '</td>';
        row += '<td>' + data[i].tel + '</td>';
        var active="";
        if(data[i].active==0){active="Non Active";}else if(data[i].active==1){active="Active";}
        row += '<td>' + active + '</td>';
        row += '<td><button id="deleteU" class="btn btn-custon-four btn-danger" data="' + data[i].id + '" ><span class="adminpro-icon adminpro-danger-error"></span>Supprimer</button></td>';
        row += '</tr>';
    }
    $("#table2").empty();
    $("#table2").html(row);
}

