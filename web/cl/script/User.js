function addUser() {
    var nom = $("#nom").val();
    var email = $("#email").val();
    var pass = $("#password").val();
    var repass = $("#confirmpass").val();
    var phone = $("#phone").val();
    var cle = $("#cle").val();
    var profile = $("#profil").val();
    var active = $("#active").val();
    var fonc = "add";
    console.log("nom :" + nom + " Email :" + email + " Phone :" + phone + " cle :" + cle + " password :" + pass + " Active :" + active + " Profil :" + profile);
    $.ajax({
        url: "../UserController2",
        data: {'profile':profile,'active':active,'nom':nom,'email':email,'pass':pass,'phone':phone,'cle':cle},
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