<?php
include "../connect.php";
$user_email = filterRequest("user_email");    
$verfiycode = filterRequest("user_verfiycode");  

   
$stmt = $con->prepare("SELECT * FROM  user WHERE `user_email` ='$user_email' AND 
`user_verfiycode` = '$verfiycode'");
$stmt->execute();

$count = $stmt->rowCount();

result($count);



?>