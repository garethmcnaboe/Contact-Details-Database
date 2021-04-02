<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Download bootstrap & jquery in order to support bootsnip-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!--link to javascript file-->
    <script src="./retrieve.js"></script>
    <!--Link to stylesheet-->
    <link rel="stylesheet" type="text/css" href="./action.css"/>

    <title>Search Results</title>

</head>
<body>

<h1>Search Results</h1>

<?php
//imports the database
include_once 'databasehandler.php';

    //calling search terms of the form
    $SearchTerm1 = $_POST['searchTerm1'];
    $SearchTerm2 = $_POST['searchTerm2'];

    //SQL statement selecting all of the relevant columns
    $sql = "SELECT PersonTitle, PersonFirstName, PersonSurname, PersonMobile, PersonEmail, HomeAdd1, HomeAdd2, HomeAddTown, 
        HomeAddCountyorCity, Homeaddeircode, ShipAdd1, ShipAdd2, ShipAddTown, ShipAddCountyorCity, ShipAddEircode 
        FROM PeopleDetails, HomeAddress, ShipAddress
        Where PeopleDetails.PersonID = HomeAddress.ForeignID AND PeopleDetails.PersonID = ShipAddress.ForeignSID
        AND PersonFirstName = '$SearchTerm1' AND PersonSurname = '$SearchTerm2';";

    //query sql database and check for number of rows. 
    $result = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($result);

    //generates table of results
    if($resultCheck > 0){
        echo "<table>";
                echo "<tr>";
                    echo "<th>Title</th>";
                    echo "<th>First Name</th>";
                    echo "<th>Surname</th>";
                    echo "<th>Mobile Number</th>";
                    echo "<th>E-mail</th>";
                    
                    echo "<th>Home Add 1</th>";
                    echo "<th>Home Add 2</th>";
                    echo "<th>Home Town</th>";
                    echo "<th>Home County or City</th>";
                    echo "<th>Home Eircode</th>";
                    
                    echo "<th>Ship Add 1</th>";
                    echo "<th>Ship Add 2</th>";
                    echo "<th>Ship Town</th>";
                    echo "<th>Ship County or City</th>";
                    echo "<th>Ship Eircode</th>";
        echo"</tr>";

        while($row = mysqli_fetch_assoc($result)){
                echo "<tr>";
                    echo "<td>" . $row['PersonTitle'] . "</td>";
                    echo "<td>" . $row['PersonFirstName'] . "</td>";
                    echo "<td>" . $row['PersonSurname'] . "</td>";
                    echo "<td>" . $row['PersonMobile'] . "</td>";
                    echo "<td>" . $row['PersonEmail'] . "</td>";

                    echo "<td>" . $row['HomeAdd1'] . "</td>";
                    echo "<td>" . $row['HomeAdd2'] . "</td>";
                    echo "<td>" . $row['HomeAddTown'] . "</td>";
                    echo "<td>" . $row['HomeAddCountyorCity'] . "</td>";
                    echo "<td>" . $row['Homeaddeircode'] . "</td>";

                    echo "<td>" . $row['ShipAdd1'] . "</td>";
                    echo "<td>" . $row['ShipAdd2'] . "</td>";
                    echo "<td>" . $row['ShipAddTown'] . "</td>";
                    echo "<td>" . $row['ShipAddCountyorCity'] . "</td>";
                    echo "<td>" . $row['ShipAddEircode'] . "</td>";

                echo "</tr>";
            }
            echo "</table><br/>";
        }
    else{
        echo "No records matching query were found.";
    }
?>
<!--button to allow user to navigate back to the main page-->
<a href="/Assignment-04a/#!/retrieve" target="_blank">Return to Search Form</a>

</body>
</html>