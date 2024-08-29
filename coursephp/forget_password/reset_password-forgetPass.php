<?php
include "../connect.php";
$user_email = filterRequest("user_email");
$user_password = sha1($_POST["user_password"]);


$data = array("user_password" => $user_password );
    
    updateData('user',$data,"user_email = $user_email");



$stmt = $con->prepare("SELECT * FROM  user WHERE `user_email` ='$user_email' AND 
`user_password` = '$repassword'");
$stmt->execute();

$count = $stmt->rowCount();

 result($count);
 


?>