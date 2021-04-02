<?php
//imports the database
include_once 'databasehandler.php';

$dfirstname = $_POST['dfirstname'];
$dsurname = $_POST['dsurname'];
$dmobile = $_POST['dmobile'];
$demail = $_POST['demail'];

$sql = "Delete from PeopleDetails Where (PersonFirstName = '$dfirstname' and 
PersonSurname = '$dsurname' and PersonMobile = '$dmobile' and PersonEmail = '$demail');
";

mysqli_query($conn, $sql);

header("location:../index.php");