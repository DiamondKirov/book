$(document).ready(function () {
    console.log('gg');
    $("#logout").on('click', function(e){
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: "ajax/logout.php",
            data: [],
            dataType: "html",
            success: function (data) {
                document.location.reload(true);
            }
        });
    })
});

