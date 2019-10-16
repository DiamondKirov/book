<?php


    require_once '../connect.php';

    $name = trim($_POST['name']);
    $surname = trim($_POST['surname']);
    $login = trim($_POST['login']);
    $password = trim($_POST['password']);
    $passwordR = trim($_POST['passwordR']);
 
    $sql = "SELECT * FROM `books`.`users` WHERE `login`='$login'";
    $query = $pdo -> prepare($sql);
    $query -> execute();
    $user = $query->fetch(PDO::FETCH_OBJ);



    if (strlen($name)<3 || strlen($surname)<6 || strlen($login)<6 || strlen($password)<6 || $password != $passwordR || $user->id > 0){
       echo $password;
       echo $passwordR;
        if (strlen($name)<6){
            echo "Name is less than 3 characters <br>";
        }
        if (strlen($surname)<6){
            echo "Surname is less than 6 characters <br>";
        }
        if (strlen($login)<6){
            echo "Login is less than 6 characters <br>";
        }
        if (strlen($password)<6){
            echo "Password is less than 6 characters <br>";
        }
        if ($password != $passwordR){
            echo "Passwords are different <br>";
        }
        if ($user->id > 0){
            echo "This login already taking ";
        }

        exit();
    }

    $password = md5($password);
    $sql = "INSERT INTO `books`.`users` VALUE (0, '$login', '$password', '$name', '$surname')";
    $query = $pdo -> prepare($sql);
    $query -> execute();
    $pdo = null;
    
    echo "Ready";   

?>
