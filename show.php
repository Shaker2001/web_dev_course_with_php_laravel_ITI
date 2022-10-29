
<?php 
session_start();
$f=fopen("file.txt","r");
rewind($f);
$data_user=[];
while(!feof($f)){$data_user[]=fgetcsv($f);}
fclose($f);
echo"<pre />";

if(isset(($_POST['submit']))){
    foreach($data_user as $user)
    {   if ($user[1]== $_POST['email'] && $user[2]==$_POST['password'])
        { 
            setcookie("password",$_POST['password'],time()+60*60*60);
            setcookie("email",$_POST['email'],time()+60*60*60);
          
            break;
         header("location: register.php");
        }
        else 
        {    echo"you inter invalid info";
        
        }

    }
 
}
  else{
        foreach($data_user as $user)
        {   if ($user[1]== $_POST['email'] && $user[2]==$_POST['password'])
        { 
            
            
            break;
        }
        else 
        { echo"you inter invalid info";
        
            }

    
                }
                $_SESSION['email']=$_POST['email'];
                $_SESSION['password']=$_POST['password'];
             header("location: register.php");

                            }
                        
                    
?>  