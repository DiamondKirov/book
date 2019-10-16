$(document).ready(function () {
    $('#add').on('click', function(){
        $text = window.location.href;
        $max = $text.length;
        $min = $text.indexOf("id")+3;
        $id = $text.slice($min, $max)
        $.ajax({
            type: "POST",
            url: "ajax/cart.php",
            dataType: "HTML",
            data: {'id': $id} ,
            success: function (data) {
                location.reload(true);
            } 
        });
    })
 
});