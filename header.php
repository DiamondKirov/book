<header>
    <div class="container">
        <div class="navigation">
            <? if ($_COOKIE["log"]==""){ ?>
                <a href="login.php" class="nav">Sign in</a>
                <a href="registration.php" class="nav">Registration</a>
            <? } else { ?>
                <a href="#" id="logout" class="nav">Log out</a>
                <a href="#" class="nav">My account</a>
            <? } ?>
           
            <a href="#" class="nav">Over status</a>
            <a href="#" class="nav">Help</a>
        </div>
        <div class="shop">
            <a href="/"><img src="img/logo.png" alt=""></a>
            <form action="" id="form-search" metod="post">
                <input type="text" name="search" id="search">
                <input type="submit" id="search-button" value="Search">
            </form>
            <div class="cart">
                <p class="items">
                <?php 
                    require_once 'connect.php';
                    $login = $_COOKIE['log'];
        
                    $sql = "SELECT sum(price) as `sum` FROM `books`.`book`, `books`.`cart` WHERE  `books`.`book`.`id` = `books`.`cart`.`id_book` and `books`.`cart`.`login` = '$login'";
                    $query = $pdo -> prepare($sql);
                    $query->execute();
                    while($row = $query->fetch(PDO::FETCH_OBJ)){
                        $sum = $row->sum;
                    }
                   
                    $sql = "SELECT count(`books`.`cart`.`id`) as `count` FROM `books`.`book`, `books`.`cart` WHERE  `books`.`book`.`id` = `books`.`cart`.`id_book` and `books`.`cart`.`login` = '$login'";
                    $query = $pdo -> prepare($sql);
                    $query ->execute();
                    while($row = $query->fetch(PDO::FETCH_OBJ)){
                        $count = $row->count;
                    }            
                ?>
                    <img src="img/cart.svg" alt="">Your cart <small> (<?echo $count?> items)</small>
                </p>
                <div class="total-price">
                    <p>$ <?echo $sum?> </p>
                    <button>Checkout</button>
                </div>
            </div>
            <div class="wish">
                <img src="img/star.svg" alt="">
                <p class="wish_count">20</p>
                <a href="#">Wish list</a>
            </div>
        </div>
    </div>
</header>
