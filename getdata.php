<?php
include 'library.php'; // include the library filr
if(isset($_POST["lastid"]) && $_POST["lastid"] != "0"){
    $lastid = $_POST["lastid"]; // save the posted value in a variable
	
	
	
    $country_select = mysql_query("SELECT * FROM messages WHERE mes_id > ".$lastid." LIMIT 5");
    if(mysql_num_rows($country_select) > 0){
        while($fetch = mysql_fetch_array($country_select)){
        ?>
        <div class="as_country_container" sid="<?php echo $fetch["mes_id"]; ?>">
            <table>
            <tr>
                <td style="width:300px;"><?php echo $fetch["mes_id"]; ?></td>
                <td><img src="country_flags/<?php echo $fetch["msg"]; ?>.png" alt="<?php echo $fetch["msg"]; ?>" title="<?php echo $fetch["msg"]; ?>" /></td>
            </tr>
            </table>
        </div>
    <?php
        }
    }
}
?>