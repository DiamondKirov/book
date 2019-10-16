<?php


    require_once '../connect.php';
    $login = $_COOKIE['log'];
    $text = trim($_POST['text']);
    $time = time();
    echo $text;
    if ($text==""){
        exit();
    }

    $sql = "INSERT INTO `books`.`comment` VALUE (0, '$login', '$time', '$text')";
    $query = $pdo -> prepare($sql);
    $query -> execute();
    echo $sql;   
    $pdo = null;
    
    echo "Ready";   

?>
