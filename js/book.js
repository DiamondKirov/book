$(document).ready(function () {
    $(".switch").bind('click', function(){
        $(".switch").each( function() {
            $(this).removeClass('active');
        });

        $(".product-discruption").each( function() {
            $(this).removeClass('active');
        });

        $(this).addClass('active');

        $number = $(this).index();
        $('.product-discruption').eq($number).addClass('active');

    })

    $("#mess").on('click', function(e){
        e.preventDefault();
        console.log($('#comment').serialize());
        $.ajax({
            type: "POST",
            url: "ajax/comm.php",
            data: { 'text': $('#text').val()},
            dataType: "html",
            success: function (data) {
                document.location.reload(true);
                
            }
        });
    })
  
});