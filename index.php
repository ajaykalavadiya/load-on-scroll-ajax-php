<?php

include 'library.php'; // include the database and server connection file
?>
<!DOCTYPE html>
<html>
<head>
<title>Load On scroll</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<style>
.as_wrapper{
    margin:0 auto;
    width:500px;
    font-family:Arial;
    color:#333;
    font-size:14px;
}
.as_country_container{
    padding:20px;
    border:2px solid #17A3F7;
    margin-bottom:10px;
}
</style>
<script type="text/javascript">
$(document).ready(function(){  
    $(window).scroll(function(){ /* window on scroll run the function using jquery and ajax */
        var WindowHeight = $(window).height(); /* get the window height */
        if($(window).scrollTop() +1 >= $(document).height() - WindowHeight){ /* check is that user scrolls down to the bottom of the page */
            $("#loader").html("<img src='loading_icon.gif' alt='loading'/>"); /* displa the loading content */
            var LastDiv = $(".as_country_container:last"); /* get the last div of the dynamic content using ":last" */
            var LastId  = $(".as_country_container:last").attr("sid"); /* get the id of the last div */
            var ValueToPass = "lastid="+LastId; /* create a variable that containing the url parameters which want to post to getdata.php file */
            $.ajax({ /* post the values using AJAX */
            type: "POST",
            url: "getdata.php",
            data: ValueToPass,
            cache: false,
                success: function(html){
                    $("#loader").html("");
                    if(html){
                        LastDiv.after(html); /* get the out put of the getdata.php file and append it after the last div using after(), for each scroll this function will execute and display the results */
                    }
                }
            });
            return false;
        }
        return false;
    });
});
</script>
</head>
 
<body>
<div class="as_wrapper">
    <h1>Window on scroll load contents in php mysql jquery using simple jQuery bootstrap module created by Ajay Patel</h1>
    <?php
    $country_select = mysql_query("SELECT * FROM messages LIMIT 10");
    while($fetch = mysql_fetch_array($country_select)){
    ?>
    <div class="as_country_container" sid="<?php echo $fetch["mes_id"]; ?>"> <!-- set the mysql row id or primary key value as div id here -->
        <table>
        <tr>
            <td style="width:300px;"><?php echo $fetch["mes_id"]; ?></td>
            <td><img src="country_flags/<?php echo $fetch["msg"]; ?>.png" alt="<?php echo $fetch["msg"]; ?>" title="<?php echo $fetch["msg"]; ?>" /></td>
        </tr>
        </table>
    </div>
    <?php
    }
    ?>
    <div id="loader"></div>
    <!-- here the rest of contents will display dynamically, after the 'as_country_container' class -->
</div>
</body>
</html>