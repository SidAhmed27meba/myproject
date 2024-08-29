<?php
include "../connect.php";
$user_email = filterRequest("user_email");
$verfiycode = filterRequest("user_verfiycode");

$stmt = $con->prepare("SELECT * FROM  user WHERE `user_email` ='$user_email' AND 
`user_verfiycode` = '$verfiycode'");
$stmt->execute();

$count = $stmt->rowCount();

if($count > 0 ){
    $data = array("user_approve" => "1");
    updateData('user', $data, "user_email = $user_email");
} else{
    printFailure("verfiy code not correct");
}



?>