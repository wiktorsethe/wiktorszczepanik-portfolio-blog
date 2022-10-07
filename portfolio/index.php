<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Grape+Nuts&family=Lobster&family=Montserrat:ital,wght@0,400;0,500;0,600;1,200&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/5920c527b1.js" crossorigin="anonymous"></script>
    <script src="Blog/js/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="Blog/styles/indexstyle.css">
</head>
<body>

    <div id="header">
        <div class="nav">
            <ul>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">About</a></li>
            </ul>
        </div>

        <div id="logo-cell">
            <div id="logo">
                <a href="index.php">Blog.net</a>
            </div>
        </div>

        <div class="nav">
            <ul>
                <li><a href="Blog/html/contact.php">Contact</a></li>
                <li><a href="#">Links</a></li>
            </ul>
        </div>

        <label for="check" id="checkbtn">
            <i class="fa-sharp fa-solid fa-bars"></i>
        </label>
        <input type="checkbox" id="check">

        <div id="nav-mobile">

            <div id="logo-cell-mobile">
                <div id="logo">
                    <a href="index.php">Blog.net</a>
                </div>
            </div>

            <label for="check" id="checkbtn-mobile">
                <i class="fa-sharp fa-solid fa-bars"></i>
            </label>
            <input type="checkbox" id="check">

            <ul>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">About</a></li>
                <li><a href="Blog/html/contact.php">Contact</a></li>
                <li><a href="#">Links</a></li>
            </ul>
        </div>
    </div>

    <div id="content">
        <div id="content-background"></div>
        <div id="article-big">
            <div id="slide-container">
                <?php include("Blog/php/slider.php"); ?>

            </div>
            <div id="slides-controls">
                <div id="prev-btn"><i class="fa-solid fa-arrow-left"></i></div>
                <div id="next-btn"><i class="fa-solid fa-arrow-right"></i></div>
            </div>
        </div>


        <div id="side-bar">
            
            <?php include("Blog/php/articleOfTheDay.php"); ?>
            
            <?php include("Blog/php/mostCommented.php"); ?>
        </div>
    </div>

    <div id="footer">
        
    </div>

    <div class="loader-wrapper">
        <span class="loader"><span class="loader-inner"></span></span>
    </div>

<script src="Blog/js/sliderMain.js"></script>    
<script src="Blog/js/loading.js"></script>  

</body>
</html>