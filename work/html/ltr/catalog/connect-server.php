<?php


$host = 'http://proteinvilla.in:2083/';
$user = 'prote6vy_vyas';
$pass = 'akshayvyas';
$db = 'prote6vy_proteinvilla';

$con = mysqli_connect($host,$user,$pass,$db) or die("Error " . mysqli_error($con));
$sql = "insert into demo values(null,'ask')";

$result = mysqli_query($con,$sql);




?>