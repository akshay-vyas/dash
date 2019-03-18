<?php
include('dbconnect.php');
include('verify.php');
session_start();
$user =$_SESSION['email'];
if(isset($_POST['addproduct']))
{
 
  $product_name = check($_POST['product_name']);
  $product_sku = check($_POST['product_sku']);
  $product_quantity = check($_POST['product_quantity']);
  $product_color = check($_POST['product_color']);
  $product_oem = check($_POST['product_oem']);
  $product_model = check($_POST['product_model']);
  $product_location = check($_POST['product_location']);
  $product_design = check($_POST['product_design']);
  $product_material = check($_POST['product_material']);
  $product_series = check($_POST['product_series']);
  $product_dimension = check($_POST['product_dimension']);
  $product_note = check($_POST['product_note']);
  $product_part_number = check($_POST['product_part_number']);
  //$product_part_diagram = check($_POST['product_part_diagram']);
  $product_part_brand = check($_POST['product_part_brand']);
  $product_vehicle_brand = check($_POST['product_vehicle_brand']);
  $product_owner = $_SESSION['email'];

  $product_insert= "insert into product_details values(null,'$product_name','$product_sku','$product_quantity','$product_color','$product_oem','$product_model','$product_location','$product_design','$product_material','$product_series','$product_dimension','$product_note','$product_part_number','$product_part_brand','$product_vehicle_brand','$product_owner','not verified')";

  // echo "insert into product_details values(null,'$product_name','$product_sku','$product_quantity','$product_color','$product_oem','$product_model','$product_location','$product_design','$product_material','$product_series','$product_dimension','$product_note','$product_part_number','$product_part_brand','$product_vehicle_brand','$product_owner','not verified')";

  $insert = mysqli_query($conn,$product_insert);


   
    header('Location: product-add.php');
  
}

?>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  
<!-- Mirrored from pixinvent.com/stack-responsive-bootstrap-4-admin-template/html/ltr/vertical-modern-menu-template/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Mar 2019 20:01:41 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Stack admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, stack admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Dashboard eCommerce - Stack Responsive Bootstrap 4 Admin Template</title>
    <link rel="apple-touch-icon" href="../../../app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/extensions/unslider.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/weather-icons/climacons.min.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/fonts/meteocons/style.min.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/vendors/css/charts/morris.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN STACK CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/app.min.css">
    <!-- END STACK CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/core/menu/menu-types/vertical-menu-modern.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/core/colors/palette-gradient.min.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/fonts/simple-line-icons/style.min.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/core/colors/palette-gradient.min.css">
    <link rel="stylesheet" type="text/css" href="../../../app-assets/css/pages/timeline.min.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
    <!-- END Custom CSS-->
  </head>
  <body class="vertical-layout vertical-menu-modern 2-columns   menu-expanded fixed-navbar" data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">

    <!-- fixed-top-->
    <?php
include('header.php');
    ?>
    <!-- ////////////////////////////////////////////////////////////////////////////-->


<?php include('aside.php');?>

    <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>

<!--/ Basic Horizontal Timeline -->
        
        <section id="number-tabs">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Add New Product</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-h font-medium-3"></i></a>
                                <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body">
                        <form method="POST" class="number-tab-steps wizard-circle">

                            <!-- Step 1 -->
                            <h6>Step 1</h6>
                            <fieldset>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName1">Product Name :</label>
                                            <input type="text" class="form-control" id="firstName1" name="product_name" >
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName1">SKU :</label>
                                            <input type="text" class="form-control" id="lastName1" name="product_sku">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName1">Quantity :</label>
                                            <input type="text" class="form-control" id="firstName1" name="product_quantity">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName1">Color :</label>
                                            <input type="text" class="form-control" id="lastName1" name="product_color">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName1">OEM :</label>
                                            <input type="text" class="form-control" id="firstName1" name="product_oem">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName1">Model :</label>
                                            <input type="text" class="form-control" id="lastName1" name="product_model">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName1">Location :</label>
                                            <input type="text" class="form-control" id="firstName1" name="product_location">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName1">Design :</label>
                                            <input type="text" class="form-control" id="lastName1" name="product_design">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName1">Material :</label>
                                            <input type="text" class="form-control" id="firstName1" name="product_material">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName1">Series :</label>
                                            <input type="text" class="form-control" id="lastName1" name="product_series">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName1">Dimensions :</label>
                                            <input type="text" class="form-control" id="firstName1" name="product_dimension">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName1">Part No :</label>
                                            <input type="text" class="form-control" id="lastName1" name="product_part_number">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName1">Part Brand :</label>
                                            <input type="text" class="form-control" id="firstName1" name="product_part_brand">
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName1">Vehicle Brand :</label>
                                            <input type="text" class="form-control" id="lastName1" name="product_vehicle_brand">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="lastName1">Description  :</label>
                                            <input type="text" class="form-control" id="lastName1" name="product_note">
                                        </div>
                                    </div>

                                   
                                </div>


                                 <div class="row">
                                    

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <button type="submit" name="addproduct" value="submit" class="btn btn-primary">Add Product</button>
                                        </div>
                                    </div>
                                </div>


                              
                            </fieldset>

                          

                         
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>


        </div>
      </div>
   
    <!-- ////////////////////////////////////////////////////////////////////////////-->

<?php
include('theme.php');

?>
    <div class="buy-now"><a href="https://goo.gl/nJZ5V1" target="_blank" class="btn bg-gradient-directional-purple white btn-purple btn-glow px-2">Buy Now</a></div>

   <?php include('footer.php'); ?>

    <script src="../../../app-assets/vendors/js/vendors.min.js"></script>
    <script src="../../../app-assets/vendors/js/charts/raphael-min.js"></script>
    <script src="../../../app-assets/vendors/js/charts/morris.min.js"></script>
    <script src="../../../app-assets/vendors/js/extensions/unslider-min.js"></script>
    <script src="../../../app-assets/vendors/js/timeline/horizontal-timeline.js"></script>
    <script src="../../../app-assets/js/core/app-menu.min.js"></script>
    <script src="../../../app-assets/js/core/app.min.js"></script>
    <script src="../../../app-assets/js/scripts/customizer.min.js"></script>
    <script src="../../../app-assets/js/scripts/pages/dashboard-ecommerce.min.js"></script>
  </body>

<!-- Mirrored from pixinvent.com/stack-responsive-bootstrap-4-admin-template/html/ltr/vertical-modern-menu-template/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Mar 2019 20:03:18 GMT -->
</html>