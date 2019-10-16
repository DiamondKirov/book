$(document).ready(function () {
    $("#registration").on('click', function(e){
        e.preventDefault();
        console.log($("#reg").serialize());
        $.ajax({
            type: "POST",
            url: "ajax/reg.php",
            data: $("#reg").serialize(),
            dataType: "html",
            success: function (data) {
                if (data=="Ready"){
                    alert('Thanks for registration');
                    var url = "/";
                    $(location).attr('href',url);
                } else{
                    $(".error").html(data);
                }
            }
        });
    })
});

