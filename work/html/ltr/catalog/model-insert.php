<?php

include('dbconnect.php');
if(isset($_POST['addmodel']))
{
	$oem ='NA'; // NA -> NOT Aplicable / not available
	$indian='NA';
	$chines='NA';
	$brand_id = $_POST['brand_id'];
	$model_name = $_POST['model_name'];
	$model_year = $_POST['model_year'];
	$quality = $_POST['quality'];
	foreach ($quality as $key => $value) {
		if($value == 'oem')
		{
			$oem = $value;
		}
		if($value == 'chines')
		{
			$chines = $value;
		}
		if($value == 'indian')
		{
			$indian = $value;
		}
		
	}
	
	
	$model_type = $_POST['model_type'];

	$insert_model = mysqli_query($conn,"insert into brand_models values(null,'$brand_id','$model_name','$model_year','$oem','$indian','$chines','$model_type','0')");

	//echo "insert into brand_models values(null,'$brand_id','$model_name','$model_year','$oem','$indian','$chines','$model_type','0')";

	header('Location:brand-model-add.php');
}




?>

