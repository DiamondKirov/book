$(document).ready(function () {
    $("#loginIn").on('click', function(e){
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: "ajax/sign.php",
            data: $("#sign").serialize(),
            dataType: "html",
            success: function (data) {
                if (data=="Ready"){
                    var url = "/";
                    $(location).attr('href',url);
                } else{
                    $(".error").html(data);
                }
            }
        });
    })
});

