function recherche() {
    var villeD = $("#villeD").val();
    var villeA = $("#villeA").val();
    console.log(villeD + " -> " + villeA);
    $.ajax({
        url: "../SearchController",
        type: 'POST',
        dataType: 'json',
        data: {'villeD': villeD, 'villeA': villeA},
        success: function (data, textStatus, jqXHR) {
            console.log(data);
            loadTable(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        },
    })
}

function loadTable(data)
{
    var row = "";
    var cmp = 0;
    for (var i = 0; i < data.length; i++)
    {
        cmp += 1;
        row += '<tr>'
        row += '< th scope = "row" >  < /th>'
        row += '<td>' + cmp + '</td>'
        row += '<td>' + data[i].villeDepart.nom + '</td>'
        row += '<td>' + data[i].villeArriver.nom + '</td>'
        row += '<td>' + data[i].user.nom + '</td>'
        row += '<td>' + data[i].dateDepart + '</td>'
        row += '<td>' + data[i].dateArriver + '</td>'
        row += '<td>' + data[i].nbrPlace + '</td>'
        row += '</tr>'

    }
    $("#tableBody").empty();
    $("#tableBody").html(row);
    init();
}

//function loadarticle(data)
//{
//    var row2 = "";
//    for (var i = 0; i < data.length; i++)
//    {
//        row2 += '< div class = "rides-list" id = "articles" >'
//        row2 += '< article class = "ride-box clearfix" >'
//        row2 += ' < div class = "ride-content" >'
//        row2 += '< a href = "#" > De < b >' + data[i].user.nom + '< /b>'
//        row2 += 'A <b>' + data[i].user.nom + '</b > < /a>'
//        row2 += 'creer par <a href="#"><b>' + data[i].user.nom + '</b > < /a>'
//        row2 += '< /div>'
//
//        row2 += '< ul class = "ride-meta" >'
//        row2 += '< li class = "ride-date" >'
//        row2 += '< a href = "#" class = "tooltip-link" data - original - title = "Date" data - toggle = "tooltip" >'
//        row2 += '< i class = "fa fa-calendar" >< /i>' + data[i].dateDepart + 'at' + data[i].dateDepart + '< /a>'
//        row2 += '< /li>'
//
//        row2 += '< li class = "ride-people" >'
//        row2 += '< a href = "#" class = "tooltip-link" data - original - title = "Number of seats" data - toggle = "tooltip" >'
//        row2 += '< i class = "fa fa-user" > < /i>'
//        row2 += data[i].dateDepart
//        row2 += '< /a>'
//        row2 += '< /li>'
//
//        row2 += '< li >'
//        row2 += '< a href = "#" >'
//        row2 += '< i class = "fa fa-file" > < /i>'
//        row2 += 'Read more'
//        row2 += '< /a>'
//        row2 += '< /li>'
//
//        row2 += '< /ul>'
//
//        row2 += '< /article>'
//        row2 += '< div class = "clearfix" > < /div>'
//
//        row2 += '< div class = "post-pagination pagination-margin clearfix" >'
//        row2 += '< div class = "next pull-right" >'
//        row2 += '< a href = "#" >'
//        row2 += 'Next'
//        row2 += '< i class = "fa fa-chevron-right" > < /i>'
//        row2 += '< /a>'
//        row2 += '< /div>'
//
//        row2 += '< /div>'
//
//        row2 += '< /div>'
//
//    }
//    $("#articles").empty();
//    $("#articles").html(row2);
//    init();
//}
