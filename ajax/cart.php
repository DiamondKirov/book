<?php
    $id = $_POST['id'];
    $login =  $_COOKIE['log'];
    require_once('../connect.php');

    $sql="INSERT INTO `books`.`cart` VALUE ('0', '$login', $id, 1)";
    echo($sql);
    $query = $pdo-> prepare ($sql);
    $query ->execute();
    header("Refresh:1; url=header.php");
?>