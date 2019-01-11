 
$(document).on('click','#findTrajet',function (){
    var date = $("#dateTrajet").val();
    var from = $("#from").val();
    var too = $("#too").val();
    
    $.ajax({
        url: "../SearchController",
        type: 'POST',
        dataType: 'json',
        data: {dateD:date,villeD:from,villeA:too},
        success: function (data, textStatus, jqXHR) {
            console.log(data);
        },error: function (jqXHR, textStatus, errorThrown) {
            console.log(""+textStatus);
        }
    });
   //alert("ok "+date+" "+from+" "+too); 
});


