<?php
include('dbconnect.php');
session_start(0);

if(isset($_POST['submit']))
{
  $product_id = $_POST['product_id'];
          
  $dir="../../images/$product_id/";
  mkdir($dir);

        // $p_image=$_POST['p_image'];

          $target= $dir;
$p_image=$_FILES["p_image"]["name"];
$target.=basename($_FILES["p_image"]["name"]);
if(move_uploaded_file($_FILES["p_image"]["tmp_name"],$target))
{
  $insert = mysqli_query($conn,"insert into images values(null,'$p_image','$product_id')");
 // echo "insert into images(null,'$p_image','$product_id')";
 header("Location:assign-images.php?product_id=$product_id");
}
else
  {
  ?>
  <script>alert(1);</script>
  <?php
}



}

?>