<?php
//imports the database
include_once 'databasehandler.php';

$value1 = $_POST['selectTitle'];
if($value1 == "0" || $value1 == 0){
$title = $_POST['otherTitle'];
}
else{
$title = $_POST['selectTitle'];
}
$personFirstName = $_POST['personFirstName'];
$personSurname = $_POST['personSurname'];
$personMobile = $_POST['personMobile'];
$personEmail = $_POST['personEmail'];

$homeAddress1 = $_POST['homeAddress1'];
$homeAddress2 = $_POST['homeAddress2'];
$homeAddressTown = $_POST['homeAddressTown'];
$homeAddressCountyorCity = $_POST['homeAddressCountyorCity'];
$homeAddressEircode = $_POST['homeAddressEircode'];

if(isset($_POST['checkbox'])){
    $shipAddress1 = $_POST['homeAddress1'];
    $shipAddress2 = $_POST['homeAddress2'];
    $shipAddressTown = $_POST['homeAddressTown'];
    $shipAddressCountyorCity = $_POST['homeAddressCountyorCity'];
    $shipAddressEircode = $_POST['homeAddressEircode'];
}
else{
    $shipAddress1 = $_POST['shipAddress1'];
    $shipAddress2 = $_POST['shipAddress2'];
    $shipAddressTown = $_POST['shipAddressTown'];
    $shipAddressCountyorCity = $_POST['shipAddressCountyorCity'];
    $shipAddressEircode = $_POST['shipAddressEircode']; 
}

$sql = "insert into PeopleDetails (PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail)
values('$title', '$personFirstName' , '$personSurname', '$personMobile', '$personEmail');";
mysqli_query($conn, $sql);

$sql1 = "insert into HomeAddress(HomeAdd1, HomeAdd2, HomeAddTown, HomeAddCountyorCity, HomeAddEircode, ForeignID)
values('$homeAddress1', '$homeAddress2', '$homeAddressTown', '$homeAddressEircode', '$homeAddressEircode', LAST_INSERT_ID());";
mysqli_query($conn, $sql1);

$sql2 = "insert into ShipAddress(ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode, ForeignSID) 
values('$shipAddress1' ,'$shipAddress2', '$shipAddressTown', '$shipAddressCountyorCity', '$shipAddressEircode', LAST_INSERT_ID());";
mysqli_query($conn, $sql2);

header("location:../index.php?Insert Successful");