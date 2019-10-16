<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/normolize.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/book-style.css">
  
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:400,700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="js/logout.js"></script>
    <script src="js/book.js"></script>
    <script src="js/cart.js"></script>
    <title><?$title?></title>
</head>
<body>
    <? include_once('header.php')?>
    <? include_once('connect.php')?>
    <div class="error"></div>
    <?php 
        $sql = "SELECT * from `books`.`book` WHERE `id` = $_GET[id]";
        $query = $pdo -> prepare($sql);
        $query -> execute();
        $book = $query->fetch(PDO::FETCH_OBJ);

        $autor = $book->autor;
        $title = $book->title;
        $discruption = $book->discruption;
        $price = $book->price;
    ?>

    <div class="container">
        <div class="way">
            <a href="/">Home</a> &raquo;  <a><? echo $title ?></a>
        </div>
    </div>

    <div class="container">
        <div class="book-wrapper">
            <div class="book-logo">
                <img src="img/1.jpg" alt="">
            </div>
            <div class="book-discruption">
                <h1><?php echo $title?></h1>
                <p><?php echo $discruption?></p>
                <div class="book-price">
                    <p>Our price: <span>$<? echo $price?></span></p>
                    <button id="add">Add to cart</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="product-wrapper">
           <div class="product-header">
               <button class="switch active">Product Information</button>
               <button class="switch">Other Details</button>
           </div>
           <div class="product-info">
               <div class="product-discruption active">
                    <p><?php echo $discruption?></p>
               </div>
               <div class="product-discruption">
                   <p><?php echo $autor?> - <?php echo $title?></p>
               </div>
           </div>
        </div>
    </div>

    <div class="container">
        <div class="comment-wrapper">
            <h1>Product review</h1>

            <?php 
                $sql = "SELECT * from `books`.`comment` WHERE  `id_book` = $_GET[id] ORDER BY `id` DESC";
                $query = $pdo -> prepare($sql);
                $query -> execute();
                while($row = $query->fetch(PDO::FETCH_OBJ)){ ?>  
                    <div class="comment-item">
                        <div class="user-info">          
                            <img src="img/user.jpg" alt="">
                            <p><? echo $row->login ?></p>
                        </div>
                        <div class="comment">
                            <? echo $row->text ?>
                        </div>
                    </div>
                <?} 
            ?>

            <?php 
                 if ($_COOKIE['log']!=''){ ?>
                   <div class="new-com">
                       <h1>Write a comment</h1>
                       <form action="" id="comment">
                            <div class="text">
                               <label for=""> Message:</label>
                               <textarea id="text" rows="5"></textarea>
                            </div>
                            <div class="error"></div>
                            <button id="mess">Submit</button>
                       </form>
                   </div>  
                 <?}
            ?>
        </div>
    </div>

</body>
</html>