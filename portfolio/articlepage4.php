<?php
    include_once('db.php');
    $article_id = 4;
    $_SESSION['user_id'] = (int)10;

    if(isset($_POST['submit'])){
        $name = $_POST['name'];
        $comment = $_POST['comment'];

        $question = "INSERT INTO comments (author, message, article_id) VALUES ('$name', '$comment', '$article_id')";
        $mission = mysqli_query($connect, $question);
        if($mission){
            header("Refresh:0");
        }else{
            echo "<script>alert('Comment not added')</script>";
        }
    }
    if(isset($_POST['liked'])){
        $getarticle_query = mysqli_query($connect, "SELECT * FROM articles WHERE id = $article_id");
        $getarticle_row = mysqli_fetch_array($getarticle_query);
        $likes = $getarticle_row['likes'];

        mysqli_query($connect, "INSERT INTO likes (user_id, article_id) VALUES ({$_SESSION['user_id']}, $article_id)");
		mysqli_query($connect, "UPDATE articles SET likes=$likes+1 WHERE id=$article_id");
        exit();
    }
    if(isset($_POST['unliked'])){
        $getarticle_query = mysqli_query($connect, "SELECT * FROM articles WHERE id = $article_id");
        $getarticle_row = mysqli_fetch_array($getarticle_query);
        $likes = $getarticle_row['likes'];

        mysqli_query($connect, "DELETE FROM likes WHERE article_id = $article_id AND user_id = {$_SESSION['user_id']}");
		mysqli_query($connect, "UPDATE articles SET likes=$likes-1 WHERE id=$article_id");
        exit();
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
    <link href="https://fonts.googleapis.com/css2?family=Grape+Nuts&family=Lobster&family=Montserrat:ital,wght@0,400;0,500;0,600;1,200&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/5920c527b1.js" crossorigin="anonymous"></script>
    <script src="Blog/js/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="Blog/styles/articlestyle.css">
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
                <li><a href="contact.php">Contact</a></li>
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
                <li><a href="contact.php">Contact</a></li>
                <li><a href="#">Links</a></li>
            </ul>
        </div>
    </div>

    <div id="content">
        <?php 
        $article_quesiton = "SELECT * FROM articles, authors, images WHERE articles.author_id = authors.author_id AND articles.image_id = images.id AND articles.id = $article_id";
        $article_mission = mysqli_query($connect, $article_quesiton);
        $article_case = mysqli_fetch_array($article_mission);
        echo '<div id="content-header">
            <span class="avatar-span">
                <i class="fa-solid fa-user-tie"></i>
                <p>'.$article_case["author_name"].'<br>'.$article_case["author_surname"].'</p>
            </span>
            <div id="content-title">
                <p>'.$article_case["title"].'</p>
            </div>
        </div>

        <div id="content-article">
            <p>'.$article_case["text"].'</p>';
            ?>
            <?php   
                $like_question = "SELECT * FROM likes WHERE user_id = {$_SESSION['user_id']} AND article_id = $article_id";
                $like_query = mysqli_query($connect, $like_question);
                $likescount_question = "SELECT likes FROM articles WHERE id = $article_id";
                $likescount_query = mysqli_query($connect, $likescount_question);
                $likes_count = mysqli_fetch_array($likescount_query);
                if(mysqli_num_rows($like_query) == 1){
                    echo '<span class="likes">
                        <p>Do you like it? </p>
                        <a href="" class="unlike" id="'.$article_id.'"><i class="fa-solid fa-heart"></i></a>
                        <p>'.$likes_count["likes"].'</p>
                    </span>';
                }else{
                    echo '<span class="likes">
                        <p>Do you like it? </p>
                        <a href="" class="like" id="'.$article_id.'"><i class="fa-regular fa-heart"></i></a>
                        <p>'.$likes_count["likes"].'</p>
                    </span>';
                }
            ?>

        </div>



        <div id="content-footer">

            <form action="" method="POST" class="content-form">
                <div class="input-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                </div>

                <div class="input-group">
                    <textarea id="comment" name="comment" placeholder="Enter your comment"></textarea>
                </div>

                <div class="input-group">
                    <button name="submit" class="submit-btn">
                        <span class="submit-span">    
                            <p>Post comment</p>
                            <i class="fa-solid fa-paper-plane"></i>
                        </span>
                    </button>
                </div>
            </form>
                
            <div id="prev-comments">
                <?php
                $comment_question = "SELECT * FROM comments WHERE article_id = $article_id ORDER BY comment_id DESC";
                $comment_mission = mysqli_query($connect, $comment_question);
                if(mysqli_num_rows($comment_mission) > 0){
                    while($row = mysqli_fetch_assoc($comment_mission)){
                        echo '<div class="single-comment">
                            <h3>'.$row['author'].'</h3>
                            <p>'.$row['message'].'</p>
                        </div>';
                    }
                }
                ?>
            </div>
        </div>
    </div>
    
    <div id="footer">

    </div>
    <div class="loader-wrapper">
        <span class="loader"><span class="loader-inner"></span></span>
    </div>
    <script src="Blog/js/loading.js"></script>  
    <script>
            $(document).ready(function(){
    $('.like').click(function(){
        var article_id = $(this).attr('id');
        $.ajax({
            url: 'articlepage4.php',
            type: 'post',
            async: false,
            data:{
                'liked': 1,
                'article_id': article_id
            },
            success:function(){

            }
        });
    });
    $('.unlike').click(function(){
        var article_id = $(this).attr('id');
        $.ajax({
            url: 'articlepage4.php',
            type: 'post',
            async: false,
            data:{
                'unliked': 1,
                'article_id': article_id
            },
            success:function(){

            }
        });
    });
});
    </script>
</body>