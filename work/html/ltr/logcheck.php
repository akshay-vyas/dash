<?php 

include('admin/dbconnect.php');
session_start();
if(isset($_POST['login']))
{
	$username = $_POST['username'];
	$password = $_POST['userpassword'];
	$log = mysqli_query($conn,"select * from login where (email = '$username' or mobile = '$username') and password='$password' LIMIT 1 ");
	echo "select * from login where (email = '$username' or mobile = '$username') and password='$password' LIMIT 1 ";

	foreach ($log as $log) 
	{
		if($log['type']=='seller')
		{
			$_SESSION['email'] = $log['email'];
			header('Location:seller/index.php');
		}
		if($log['type']=='catalog')
		{
			$_SESSION['email'] = $log['email'];
			header('Location:catalog/index.php');
		}
		
		break;
		# code...
	}
}

?>