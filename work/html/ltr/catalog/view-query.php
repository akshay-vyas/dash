<?php 
include('dbconnect.php');
if(isset($_POST['add_brand']))
{
  //echo "asd";
    $product_id = $_POST['product_id']; 
  
  $brand_id = $_POST['add_brands'];

  foreach ($brand_id as $brand_id)
  {
      $insert = mysqli_query($conn,"insert into assign_brands values(null,'$product_id','$brand_id','0')");
      echo "insert into assign_brands values(null,'$product_id','$brand_id','0')";
  }
  //header('Location: assign-brands.php');


}
?>