<?php
include('dbconnect.php');
session_start();
$user = $_SESSION['email'];


$view_query = "select * from product_details where product_owner ='$user' and product_status = 'verified'";
  //echo $view_query;
  //echo "Sd";
  $view = mysqli_query($conn,$view_query);


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
        <section id="horizontal-vertical">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Product Not Verified</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
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
                    <div class="card-body card-dashboard">
                        <p class="card-text">Wait till catalog managers will go through the product details for verifications</p>
                        <table class="table display nowrap table-striped table-bordered scroll-horizontal-vertical">
                            <thead>
                                <tr>
                                    <th>Product name</th>
                                    <th>Product SKU</th>
                                    <th>Product Model</th>
                                    <th>Product Material</th>
                                    <th>Product Series</th>
                                    <th>Product Part No</th>
                                    <th>More Info</th>
                                    
                                </tr>
                            </thead>
                            <tbody> 
                        <?php 
                        foreach ($view as $view)
                            {
                                ?>
                                   <tr>
                                    <td><?php echo $view['product_name'];?></td>
                                    <td><?php echo $view['product_sku'];?></td>
                                    <td><?php echo $view['product_model'];?></td>
                                    <td><?php echo $view['product_material'];?></td>
                                    <td><?php echo $view['product_series'];?></td>
                                    <td><?php echo $view['product_part_number'];?></td>
                                    <td><a href="">More Info..</a></td>
                                    
                                </tr>
                                <?php 
                            }
                         ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

        </div>
      </div>
   
    <!-- ////////////////////////////////////////////////////////////////////////////-->

<?php
include('theme.php');

?>
    <div class="buy-now"><a href="https://goo.gl/nJZ5V1" target="_blank" class="btn bg-gradient-directional-purple white btn-purple btn-glow px-2">Buy Now</a></div>

   <?php include('footer.php'); ?>

    <script src="../../../app-assets/vendors/js/vendors.min.js"></script>
     <script src="../../../app-assets/vendors/js/tables/datatable/datatables.min.js"></script>
    <script src="../../../app-assets/vendors/js/charts/raphael-min.js"></script>
    <script src="../../../app-assets/vendors/js/charts/morris.min.js"></script>
    <script src="../../../app-assets/vendors/js/extensions/unslider-min.js"></script>
    <script src="../../../app-assets/vendors/js/timeline/horizontal-timeline.js"></script>
    <script src="../../../app-assets/js/core/app-menu.min.js"></script>
    <script src="../../../app-assets/js/core/app.min.js"></script>
    <script src="../../../app-assets/js/scripts/customizer.min.js"></script>
    <script src="../../../app-assets/js/scripts/tables/datatables/datatable-basic.min.js"></script>
    <script src="../../../app-assets/js/scripts/pages/dashboard-ecommerce.min.js"></script>
  </body>

<!-- Mirrored from pixinvent.com/stack-responsive-bootstrap-4-admin-template/html/ltr/vertical-modern-menu-template/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Mar 2019 20:03:18 GMT -->
</html>