<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
       
    <link rel="stylesheet" href="css/normolize.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/index-style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="js/logout.js"></script>
    <title>Страница товаров</title>
</head>
<body>
    <? require_once 'header.php'?>


   
    <main>
        <div class="container">
            <div class="categories-wrapper">
                <h1>Categories</h1>
                <div class="categories">
                    <div class="categories-sort">
                        <a href="#" class="all">All</a>
                        <h2>Fiction &amp; Literature</h2>
                        <a href="#">Children</a>
                        <a href="#">Science</a>
                        <a href="#">Fantasy</a>
                        <a href="#">Mistery</a>
                        <a href="#">Romance</a>
                        <a href="#">Horror</a>
                        <a href="#">Poetry</a>
                        <a href="#">Literature</a>
                        <a href="#">Crime</a>
                    </div>
                    <div class="categories-sort">
                        <h2>Non - Fiction</h2>
                        <a href="#">Comic</a>
                        <a href="#">Cook</a>
                        <a href="#">Psyhology</a>
                        <a href="#">Medical</a>
                        <a href="#">Art</a>
                        <a href="#">Photography</a>
                        <a href="#">Law</a>
                        <a href="#">History</a>
                        <a href="#">Business</a>
                        <a href="#">Computer</a>
                    </div>
                    <div class="categories-sort">
                        <h2>Other</h2>
                        <a href="#">Baby</a>
                        <a href="#">Sex</a>
                        <a href="#">Travel</a>
                        <a href="#">Scince</a>
                        <a href="#">Sports</a>
                    </div>
                </div>
            </div>
            <div class="books-wrapper">
                <h1>All</h1>
                <div class="books">
                    <?php 
                    require_once 'connect.php';
                    
                    $sqlCount = 'SELECT count(*) as total FROM `books`.`book`';
                    $query = $pdo->query($sqlCount);
                    $number = $query->fetch(PDO::FETCH_OBJ);
                    $number = (int)$number->total;
                    $numberList = ceil($number/20);

                    if ($_GET["id"]==''){
                        $sqlBook = 'SELECT * FROM `books`.`book` LIMIT 0, 20';
                        $query = $pdo->query($sqlBook);
                    } else {
                        $count = (int)$_GET["id"];
                        $limitMin = ($count-1)*20+1;
                        $limitMax = ($count)*20;
                        $sqlBook = "SELECT * FROM `books`.`book` LIMIT $limitMin, $limitMax";
                        $query = $pdo->query($sqlBook);
                    }
                    
               
                  
                    
                    while($row = $query->fetch(PDO::FETCH_OBJ)){
                        echo "<a href=\"book.php?id=".$row->id."\" class=\"book-item\">
                            <img src=\"img/1.jpg\" alt=\"\">
                            <h2>$row->title</h2>
                            <p class=\"price\">$$row->price</p>
                            </a>";
                    } 
                    ?>
                </div>

                <div class="list">
                    <?php
                    if($_GET["id"]==''){
                        for ($i = 1; $i <= $numberList; $i++ ){
                            if ($i==1){
                                echo "<a href=\"?id=1\" class=\"active\"> $i </a>";
                            } else {
                                echo "<a href=\"?id=$i\"> $i </a>";
                            };
                        };
                    } else{
                        for ($i = 1; $i <= $numberList; $i++ ){
                            if ($_GET["id"]==$i){
                                echo "<a href=\"?id=$i\" class=\"active\"> $i </a>";
                            } else {
                                echo "<a href=\"?id=$i\"> $i </a>";
                            };
                            
                        };
                    }
                    ?>
                </div>
            </div>
        </div>
    </main> 

</body>
</html>
