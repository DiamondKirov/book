<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/normolize.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/reg-style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="js/registaion.js"></script>
    <script src="js/sign.js"></script>
    <script src="js/logout.js"></script>
    <title>Document</title>
</head>
<body>
  
    <?php include_once 'header.php'?>
    <div class="container">
        <form action="" id="reg">
            <h1>Registration</h1>
            <div class="input">
                <input id="name" name="name" type="text" required>
                <label for="name">Name:</label>
            </div>
            <div class="input">
                <input id="surname" name="surname" type="text" required>
                <label for="surname">Surname:</label>
            </div>
            <div class="input">
                <input id="login" name="login" type="text" required>
                <label for="login">Login: </label>
            </div>
            <div class="input">
                <input id="password" name="password" type="password" required >
                <label for="password">Password: </label>
            </div>
            <div class="input">
                <input id="passwordR" name="passwordR" type="password" required>
                <label for="passwordR">Reply password: </label>
            </div>
            <div class="error"></div>
            <button  id="registration">Registration</button>
           
        </form>  
                      
    </div>

</body>
</html>