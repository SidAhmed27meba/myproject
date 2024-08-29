<?php
include "../connect.php";
$user_email = filterRequest("user_email");
$user_verfiycode    = rand(10000, 99999);

$stmt = $con->prepare("SELECT * FROM  user WHERE `user_email` ='$user_email' ");
$stmt->execute();

$count = $stmt->rowCount();

 result($count);
 
 if($count > 0){
    $data = array("user_verfiycode" => $user_verfiycode );
    
    updateData('user',$data,"user_email = $user_email",false);

    sendemail($user_email, "hi we are app comunity", "your verfiy code $user_verfiycode");
 }


?>