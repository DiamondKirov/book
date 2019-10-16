<?php

    require_once '../connect.php';

    $login = trim($_POST['login']);
    $password = trim($_POST['password']);

    $password = md5($password);



    $sql = "SELECT * FROM `books`.`users` WHERE `login`='$login' and `password` = '$password'";
    $query = $pdo -> prepare($sql);
    $query -> execute();
    $user = $query->fetch(PDO::FETCH_OBJ);

    if ($user->id == 0){
        echo "Неверный логин или пароль";
        exit();
    } else {
        setcookie('log', $login, time () + 3600*24*30, '/');
        echo 'Ready';
    }

    $pdo = null;

?>
