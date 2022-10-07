<?php
    if(isset($_POST['submit'])){
        $name = $_POST['name'];
        $email = $_POST['email'];
        $message = $_POST['message'];
        $subject = "Wspolpraca";

        $mailheader = "From: ".$name."<".$email.">\r\n";

        $recipient = "wiktor_szczepanik@wp.pl";

        mail($recipient, $subject, $message, $mailheader);
        
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Techweeb</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/5920c527b1.js" crossorigin="anonymous"></script>
    <script src="../js/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="../styles/contactstyle.css">
</head>
<body>
    <div id="header">
        <div class="nav">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="">Contact</a></li>
            </ul>
        </div>
    </div>

    <div id="content">
        <div id="main-content">
            <div id="main-header">
                <span>
                    <h1>Skontaktuj się ze mną!</h1>
                    <p>Jeśli zainteresowałem Cię i chcesz współpracować ze mną, skorzystaj z formularza kontaktowego lub jednego z innych sposobów.</p>
                </span>
            </div>
            <div id="main-form">
                <form action="" method="POST" class="form">
                    <div id="row">
                        <div class="input-group">
                            <label for="name">NAME:</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="input-group">
                            <label for="email">EMAIL:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                    </div>

                    <div class="textarea">
                        <label for="message">MESSAGE:</label>
                        <textarea id="message" name="message" required></textarea>
                    </div>
                    
                    <button name="submit" class="submit-btn"> 
                        <p>Send</p>
                    </button>
                </form>
            </div>
        </div>
        <div id="side-content">
            <div class="side-contact">
                <h4>EMAIL:</h4>
                <p>wiktor_szczepanik@wp.pl</p>
            </div>
            <div class="side-contact">
                <h4>TELEFON:</h4>
                <p>+48 787 501 753</p>
            </div>
            <div class="side-contact">
                <a href="https://www.instagram.com/wiiktorrs/"><i class="fa-brands fa-square-instagram"></i></a>
                <a href="https://www.facebook.com/wiktor.szczepanik123/"><i class="fa-brands fa-square-facebook"></i></a>
                <a href=""><i class="fa-brands fa-square-github"></i></a>
            </div>
        </div>
    </div>
</body>
</html>