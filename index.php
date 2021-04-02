<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>

<!--link to javascript file-->
<script src="./Assignment-04.js"></script>


<body ng-app="myApp">

<h1>Contact Details Database - Assignment 4</h1>

<div class="nav">

    <ul>
    <li><a href="#/!">Home</a></li>
    <li><a href="#!create">Create New Entry</a></li>
    <li><a href="#!retrieve">Retrieve Entry</a></li>
    <li><a href="#!update">Update Entry</a></li>
    <li><a href="#!delete">Delete Entry</a></li>
    <ul>
<div>

<div ng-view></div>

<script>
var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "main.html"
    })
    .when("/create", {
        templateUrl : "create.php"
    })
    .when("/retrieve", {
        templateUrl : "retrieve.php"
    })
    .when("/update", {
        templateUrl : "update.php"
    })
    .when("/delete", {
        templateUrl: "delete.php"
    });
});
</script>

<p>Footnote</p>
<script src="./Assignment-04.js"></script>

</body>
</html>