<?php
    $username = "root";
    $password = "";
    $host = "localhost";
    $db = "books";

    $dsh = "mysql:host$host;dbname=$db";
    $pdo = new PDO($dsh, $username, $password);
    $pdo ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo ->setAttribute(PDO::ATTR_EMULATE_PREPARES, FALSE);
?>