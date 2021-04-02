<?php
//imports the database
include_once 'databasehandler.php';

//If else statement to determine whether to take specified other title or one provided
$value1 = $_POST['uselectTitle'];
if($value1 == "0" || $value1 == 0){
$title = $_POST['uotherTitle'];
}
else{
$title = $_POST['uselectTitle'];
}

$personMobile = $_POST['upersonMobile'];
$personEmail = $_POST['upersonEmail'];

$homeAddress1 = $_POST['uhomeAddress1'];
$homeAddress2 = $_POST['uhomeAddress2'];
$homeAddressTown = $_POST['uhomeAddressTown'];
$homeAddressCountyorCity = $_POST['uhomeAddressCountyorCity'];
$homeAddressEircode = $_POST['uhomeAddressEircode'];

//if else statement to determine whether to reuse the home address for delivery
if(isset($_POST['ucheckbox'])){
    $shipAddress1 = $_POST['uhomeAddress1'];
    $shipAddress2 = $_POST['uhomeAddress2'];
    $shipAddressTown = $_POST['uhomeAddressTown'];
    $shipAddressCountyorCity = $_POST['uhomeAddressCountyorCity'];
    $shipAddressEircode = $_POST['uhomeAddressEircode'];
}
else{
    $shipAddress1 = $_POST['ushipAddress1'];
    $shipAddress2 = $_POST['ushipAddress2'];
    $shipAddressTown = $_POST['ushipAddressTown'];
    $shipAddressCountyorCity = $_POST['ushipAddressCountyorCity'];
    $shipAddressEircode = $_POST['ushipAddressEircode'];
}

//calling search terms from the form.
$SearchTerm1 = $_POST['uSearchTerm1'];
$SearchTerm2 = $_POST['uSearchTerm2'];
$SearchTerm3 = $_POST['uSearchTerm3'];

//3 update statements to update each of the three sql tables.
$sql1 = "UPDATE PeopleDetails, HomeAddress set HomeAdd1 = '$homeAddress1', HomeAdd2 = '$homeAddress2', HomeAddTown = '$homeAddressTown', 
HomeAddCountyorCity = '$homeAddressCountyorCity', HomeAddEircode = '$homeAddressEircode' WHERE PeopleDetails.PersonID = HomeAddress.ForeignID 
And PeopleDetails.PersonFirstName = '$SearchTerm1' And PeopleDetails.PersonSurname = '$SearchTerm2' And PeopleDetails.PersonEmail = 
'$SearchTerm3';";
mysqli_query($conn, $sql1);

$sql2 = "UPDATE PeopleDetails, ShipAddress set ShipAdd1 = '$shipAddress1', ShipAdd2 = '$shipAddress2', ShipAddTown = '$shipAddressTown', 
ShipAddCountyorCity = '$shipAddressCountyorCity', ShipAddEircode = '$shipAddressEircode' WHERE PeopleDetails.PersonID = ShipAddress.ForeignSID 
And PeopleDetails.PersonFirstName = '$SearchTerm1' And PeopleDetails.PersonSurname = '$SearchTerm2' And PeopleDetails.PersonEmail = 
'$SearchTerm3';";
mysqli_query($conn, $sql2);

$sql3 = "UPDATE PeopleDetails set PersonTitle = '$title', PersonMobile = '$personMobile', PersonEmail = '$personEmail' WHERE
PeopleDetails.PersonFirstName = '$SearchTerm1' And PeopleDetails.PersonSurname = '$SearchTerm2' And PeopleDetails.PersonEmail = 
'$SearchTerm3';";
mysqli_query($conn, $sql3);

header("location:../index.php?Update Successful");