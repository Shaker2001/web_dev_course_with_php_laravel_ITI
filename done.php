
<?php  


if (filesize("file.txt")==0){
    $txt=$_POST['username']. ",". $_POST['email']. ",". sha1($_POST['password']) . ",". $_POST['country']. ",". $_FILES['image']['name'];
}
else
{$txt="\n". $_POST['username']. ",". $_POST['email']. ",". sha1($_POST['password']) . ",". $_POST['country']. ",". $_FILES['image']['name'];
}
$data=fopen("file.txt","a+");
fwrite($data,$txt);
rewind($data);
$users=[];
while(!feof($data)){
$users[]=fgetcsv($data);
}


echo "<pr>";
print_r($data);
?>

<html>
<head>

</head>
<body>
    <table border="1" bgcolor="lightblue" align="center" width=50%>
        <caption>
            user
        </caption>
        <tr>
            <th>name</th>
            <th>email</th>
            <th>password</address></th>
            <th>city</th>
            
            <th>image</th>
            
        </tr>
        <?php foreach ($users as $std){?>
        <!---start looping-->
        <tr>
            <td><?php echo $std[0] ?></td>
            <td><?php echo $std[1] ?></td>
            <td><?php echo $std[2] ?></td>
            <td><?php echo $std[3] ?></td>
            <td><?php echo $std[4] ?></td>
            
            
            
        </tr>
        <?php  }  ?>
    </table>
</body>
</html>



























