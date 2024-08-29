<?php
include "../connect.php";
$user_email = filterRequest("user_email");
$user_password = sha1($_POST["user_password"]);

//$stmt = $con->prepare("SELECT * FROM  user WHERE `user_email` ='$user_email' AND 
//`user_password` = '$user_password' AND `user_approve` = 1 ");
//$stmt->execute();

//$count = $stmt->rowCount();

 //result($count);
 getData('user',"user_email =? AND user_password = ? 
 AND user_approve = 1 " , array($user_email,$user_password) ) 



?>