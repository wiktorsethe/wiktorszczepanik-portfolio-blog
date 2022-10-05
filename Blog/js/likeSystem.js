$(document).ready(function(){
    $('.like').click(function(){
        var article_id = $(this).attr('id');
        $.ajax({
            url: 'articlepage1.php',
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
            url: 'articlepage1.php',
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