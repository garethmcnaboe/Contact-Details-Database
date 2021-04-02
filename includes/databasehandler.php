<?php

//Login location and details for the database
$dbservername = "webcourse.cs.nuim.ie";
$dbusername = "p210051";
$dbpassword = "yohshae6Jukea0sh";
$dbname = "cs230_p210051";

//Create connection to the database
$conn = mysqli_connect($dbservername, $dbusername, $dbpassword, $dbname);

//check connection 
if(!$conn){
    die("Connection failed: " . mysli_connect_error());
    }   
echo "(You are connected to the p210051 database.)";