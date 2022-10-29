<?php
// 1- connection
$conn=new PDO("mysql:host=localhost;dbname=industry","root","");
$projectList = $conn->query("SELECT * FROM project"); // object
$projectData = $projectList->fetchAll(PDO::FETCH_ASSOC); // array

//$deptList = $conn->query("SELECT dnum,dname FROM department"); // object
//$deptData = $deptList->fetchAll(PDO::FETCH_ASSOC); // array

if (isset($_POST['submit'])) {
    
    function validate($input)
    {
        $data = trim($input);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    $Pname = validate($_POST['Pname']);
    $Pname = strtolower($Pname);
    $Plocation = validate($_POST['Plocation']);
    $Plocation = strtolower($Plocation);
    $city = validate($_POST['City']);
    $city = strtolower($city);
    $pnum = filter_var($_POST['pnum'], FILTER_SANITIZE_NUMBER_INT);
    
    $dpartnum = $_POST['Dnum'];
   // $image_name = "hhh.jpg";
  
    //if ( !empty($pname) && !empty($pnum) && !empty($Plocation) && !empty($dpartnum)&& !empty($city)) {
        $result = $conn->query("INSERT INTO `project` (`Pname`, `pnum`, `Plocation`, `City`, `Dnum`) VALUES ('$Pname', '$pnum', '$Plocation', '$city', '$dpartnum')");
        if ($result) {
            echo "inserted";
        }
    //}
    
}
?>

<html>

<head></head>

<body>
    <center>
        <form  method="post" enctype="multipart/form-data">
            <div>
                <label>pname</label>
                <div>
                    <input type="text" name="Pname" required>
                </div>
            </div>
            <div>
                <label>pnum</label>
                <div>
                    <input type="text" name="pnum" required>
                </div>
            </div>
            <div>
                <label>location</label>
                <div>
                    <input type="text" name="Plocation" required>
                </div>
            </div>
            <div>
                <label>city</label>
                <div>
                    <input type="text" name="City" required>
           
<label >Dnum</label> 
    <select name="Dnum" >
        <option value="10" >10</option>
        <option value="20" >20</option>
       
    </select>
</div>  
<div>
<label> image</label> 
<input type="file" name="image"  />
</div> <br />
            
                <input type="submit" name="submit" value="register">
            </div>

        </form>
    </center>
</body>

</html>