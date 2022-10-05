<?php
    include_once 'blog/php/db.php';
    
    for($i=1; $i<=6; $i++){
    $slider_quesiton = "SELECT * FROM articles, authors, images WHERE articles.author_id = authors.author_id AND articles.image_id = images.id AND articles.id = $i";
    $slider_mission = mysqli_query($connect, $slider_quesiton);
    $slider_case = mysqli_fetch_array($slider_mission);
        echo '<div class="slide">
            <div id="article-header">
                <span class="avatar-span">
                    <i class="fa-solid fa-user-tie"></i>
                    <p>'.$slider_case["author_name"].'<br>'.$slider_case["author_surname"].'</p>
                </span>
                <div id="article-title">
                    <a href="Blog/html/articlepage'.$i.'.php">
                        <p>'.$slider_case["title"].'</p>
                    </a>
                </div>
            </div>';
                ?>
                <?php
    $image_quesiton = "SELECT images.name, articles.id, articles.image_id FROM images, articles WHERE articles.image_id = images.id AND articles.id = $i";
    $image_mission = mysqli_query($connect, $image_quesiton);
    
    while ($case = mysqli_fetch_object($image_mission)){
                ?>
            <div id="article-content">
                <div id="article-img">         
                    <img src="Blog/php/download.php?id=<?php echo $case->id; ?>">
                </div> 

<?php } ?>
<?php
    $substring_quesiton = "SELECT SUBSTRING(text,1,200) as text FROM articles WHERE id = $i";
    $substring_mission = mysqli_query($connect, $substring_quesiton);
    $substring_case = mysqli_fetch_row($substring_mission);
                echo '<div id="article-text">
                    <a href="Blog/html/articlepage'.$i.'.php">
                        <p>'.$substring_case[0].'...'.'</p>
                    </a>
                </div>
            </div>
            <a href="Blog/html/articlepage'.$i.'.php" class="article-btn"><p>Enter</p></a>
        </div>';
            };
?>