<?php
// 1- connection

$conn=new PDO("mysql:host=localhost;dbname=industry","root","");
// 2- query
$projectList = $conn->query("SELECT * FROM project left join department on project.Dnum = department.dnum");
$projectData = $projectList->fetchAll(PDO::FETCH_ASSOC);
// echo "<pre>";
// var_dump($employeeData);
// echo "</pre>";



?>


<html>

<head></head>

<body>
    <table border="1" bgcolor="lightblue" width=50% align="center">
        <caption>project</caption>
        <tr>
            <th>Pname</th>
            <th>pnum</th>
            <th>Plocation</th>
            <th>City</th>
            <th>Dnum</th>
            <th>image</th>
        </tr>
        <?php foreach ($projectData as $project) {
           
        ?>
            <tr>
                <td><?php echo $project['Pname'] ?></td>
                <td><?php echo $project['pnum'] ?></td>
                <td><?php echo $project['Plocation'] ?></td>
                <td><?php echo $project['City'] ?></td>
                <td><?php echo $project['Dnum'] ?></td>
                
                <?php if (!empty($project['image'])) { ?>
                    <td><img src="../uploads/images/<?php echo $project['image'] ?>" width="90"></td>
                <?php } else { ?>
                    <td><img src="../uploads/images/default.jpg" width="90"></td>
                <?php } ?>
                
                
                
                
            </tr>
        <?php } ?>
    </table>
    <center>
        <a href="submition.php">Add New project</a>
    </center>
</body>

</html>