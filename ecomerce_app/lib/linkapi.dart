class Applink {
 static const String server = "http://localhost/coursephp"; 
 static const String image = "http://localhost/coursephp/uplode_image"; 
 static const String test = "$server/test.php";
 
 //====================Auth================================
 static const String signup_link = "$server/auth/sign_up.php";
 static const String code_verif_signup_link = "$server/auth/verfiy_code.php";
 static const String login_link = "$server/auth/login.php";
 
 //====================Forgetpassword================================
static const String check_email_forgpass = "$server/forget_password/check_email-forgetPass.php";
static const String verifey_code_forgetPass = "$server/forget_password/verifey_code-forgetPass.php";
static const String reset_password_forgetPass = "$server/forget_password/reset_password-forgetPass.php";
//======================screens======================================
static const String home = "$server/home.php";

//======================image===========================================
static const String image_categorie = "$image /categories_image";
static const String image_items = "$image /items_image";
}
