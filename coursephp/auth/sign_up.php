<?php

include "../connect.php"; 
$user_name =  filterRequest("user_name");
$user_email = filterRequest("user_email");
$user_phone = filterRequest("user_phone");
$user_verfiycode    = rand(10000, 99999);
$user_password = sha1($_POST["user_password"]);


$stmt = $con->prepare("SELECT * FROM  user WHERE  `user_phone` = ? OR `user_email` = ? ");
$stmt->execute(array($user_phone , $user_email));

$count = $stmt->rowCount();
if($count > 0){
    printFailure("phone or email");
}else{
    $data = array(
        "user_name" => $user_name,
        "user_email" => $user_email,
        "user_phone" => $user_phone,
        "user_verfiycode" => $user_verfiycode ,
        "user_password" => $user_password,
    );
    sendemail($user_email, "hi we are app comunity", "your verfiy code $user_verfiycode");
    insertData('user', $data);
}




?>