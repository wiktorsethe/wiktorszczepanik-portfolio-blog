<?php 
    include_once('db.php');
    $side_article_quesiton = "SELECT id, author_name, author_surname, title, text, date, COUNT(comment_id) as comments FROM articles, authors, comments WHERE articles.author_id = authors.author_id AND articles.id = comments.article_id GROUP BY article_id ORDER BY comments DESC LIMIT 1";
    $side_article_mission = mysqli_query($connect, $side_article_quesiton);
    $side_article_case = mysqli_fetch_array($side_article_mission);
            echo '<div class="side-slide">
                <div class="side-bar-inset"><p>#Most commented</p></div>
                <div id="side-header">
                    <div class="side-author">
                        <p>'.$side_article_case["author_name"].'<br>'.$side_article_case["author_surname"].'</p>
                    </div>
                    <div id="side-title">
                        <p>'.$side_article_case["title"].'</p>
                    </div>
                </div>';
    $substring_quesiton = "SELECT COUNT(comment_id) as comments, SUBSTRING(text,1,200) as text FROM articles, comments WHERE articles.id = comments.article_id GROUP BY article_id ORDER BY comments DESC LIMIT 1";
    $substring_mission = mysqli_query($connect, $substring_quesiton);
    $substring_case = mysqli_fetch_row($substring_mission);
                echo '<div id="side-content">
                    <div id="side-text">
                        <a href="articlepage'.$side_article_case["id"].'.php">'
                        .$substring_case[1].'...'.
                        '</a>
                    </div>
                </div>
                <div id="side-footer">
                    <span class="comments">
                        <i class="fa-regular fa-comment"></i>
                        <p>'.$side_article_case["comments"].'</p>
                    </span>
                    <p class="date">'.$side_article_case["date"].'</p>
                </div>
            </div>';
?>
