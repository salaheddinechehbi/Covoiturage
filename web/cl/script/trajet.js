function addTrajet(){
    var villeD=$("#villeDepart").val();
    var dateD=$("#dateDepart").val();
    var heureD=$("#timedepart").val();
    var villeA=$("#villeArr").val();
    var dateA=$("#dateArrive").val();
    var heureA=$("#timedarrive").val();
    var user=localStorage.id;
    var com=$("#commentaire").val();
    var route=$("#route").val();
    var place=$("#nbrPlace").val();
    console.log(user);
    $.ajax({
        url: "../TrajetController",
        data: {'villeD':villeD,'villeA':villeA,'dateD':dateD,'dateA':dateA,'heureA':heureA,'heureD':heureD,'user':user,'route':route,'place':place,'com':com},
        dataType: 'json',
        success: function (data, textStatus, jqXHR) {
            console.log(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus); 
        }
        
    })
    
}