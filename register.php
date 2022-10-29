<?php

use function PHPSTORM_META\type;
function validat($input){
    $data=trim($input);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;
}



if (isset($_POST['register'])){
$username=$_POST['username'];
$password=$_POST['password'];
$password=sha1($password);
if (filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)){
    $email=$_POST['email'];;
}
else{echo"you inter an invalid email";}
$city=$_POST['country'];
$image=$_FILES['image'];
$image_name=$_FILES['image']['name'];
$tmp_name=$_FILES['image']['tmp_name'];
$array_img =explode(".",$image_name);
$allow=['jpg','png','jpeg'];
$exe=end($array_img);

move_uploaded_file($tmp_name,"upload/image/".$_POST['username'."".$exe]);


$username=validat($username);
setcookie("username",$username,time()+60*60*60);
setcookie("password",$password,time()+60*60*60);
setcookie("email",$email,time()+60*60*60);
setcookie("city",$city,time()+60*60*60);
setcookie("image",$image,time()+60*60*60);

}



?>


<!DOCTYPE html>
<html lang="en">
<html>
<head>
<title>Registration</title>
</head>
<body>
    <center>  
<h1>

</h1>
<form action="done.php" method="post" enctype="multipart/form-data">
<div>
<label for="First Name"> First Name</label>
<input type="text"
name="username"
/>
</div>    
<div>
    <label for="email" >Email</label>
    <input type="email" name="email" >
</div>
<div>
<label for="City">City</label> 
    <select name="country" id="country">
        <option value="mansoura" >mansoura</option>
        <option value="zagaziq" >zagaziq</option>
        <option value="cairo" >cairo</option>
        <option value="alex" >alex</option>
    </select>
</div>  

<div>
<label for="password">password</label> 
<input type="password" name="password" id="password" />
</div> <br />
<div>
<label> image</label> 
<input type="file" name="image"  />
</div> <br />


<div>
<input type="submit" value="register" name="register">
</div> 

</form>
    </center>
</body>
</html>
   

