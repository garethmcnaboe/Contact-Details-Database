<?php
//imports the database
include_once 'databasehandler.php';

//calling search terms from the form.
$dfirstname = $_POST['dfirstname'];
$dsurname = $_POST['dsurname'];
$dmobile = $_POST['dmobile'];
$demail = $_POST['demail'];

//sql statement to be sent to the database
$sql = "Delete from PeopleDetails Where (PersonFirstName = '$dfirstname' and 
PersonSurname = '$dsurname' and PersonMobile = '$dmobile' and PersonEmail = '$demail');
";

//send sql statement to database
mysqli_query($conn, $sql);

//return to the main page
header("location:../index.php");