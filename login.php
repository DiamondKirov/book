<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/normolize.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/sign-style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="js/sign.js"></script>
    <script src="js/logout.js"></script>
    <title>Document</title>
</head>
<body>
  
    <?php include_once 'header.php'?>

    <div class="container">
        <form action="" id="sign">
            <h1>Login in</h1>
            <div class="input">
                <input id="login" name="login" type="text" required>
                <label for="login">Login: </label>
            </div>
            <div class="input">
                <input id="password" name="password" type="password" required >
                <label for="password">Password: </label>
            </div>
            <div class="error"></div>
            <button id="loginIn">Login in</button>
           
        </form>              
    </div>
    
</body>
</html>