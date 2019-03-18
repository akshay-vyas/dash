<?php 
include('dbconnect.php');
session_start();
//echo "sadf";

if(isset($_POST['addbrand']))
{
    

    $brand = $_POST['brand_name'];
    $insert = mysqli_query($conn,"insert into brands values(null,'$brand')");
    echo "insert into brands values(null,'$brand')";
    header('Location:brands.php');
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
        

<!--/ Basic Horizontal Timeline -->

   <div class="col-xl-12 col-lg-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title">Enter Brand Names</h4>
          <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
          <div class="heading-elements">
            <ul class="list-inline mb-0">
              <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
              <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
              <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
              <li><a data-action="close"><i class="ft-x"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="card-content">
          <div class="card-body">
                    <div class="col-xl-6 col-lg-6 col-md-12">
            <div class="card">
               
                <div class="card-content">
                    
                       
                        
                            <form method="post">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Button on right" aria-describedby="button-addon2" name="brand_name">
                                <div class="input-group-append" id="button-addon2">
                                    <button class="btn btn-primary" type="submit" name="addbrand" value="submit">Add</button>
                                </div>
                            </div>
                             </form>
                       
                   
                    
                </div>
            </div>
        </div>
        <!--
            <fieldset class="right-checkbox">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="customCheckRight" id="customCheckRight1">
                <label class="custom-control-label" for="customCheckRight1">Custom checkbox</label>
              </div>                  
            </fieldset>
            <fieldset class="right-checkbox">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="customCheckRight" id="customCheckRight2" checked>
                <label class="custom-control-label" for="customCheckRight2">Custom checkbox checked</label>
              </div>                
            </fieldset>
            <fieldset class="right-checkbox disabled">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" name="customCheckRight" id="customCheckRight3" disabled>
                <label class="custom-control-label" for="customCheckRight3">Custom checkbox disabled</label>
              </div>                
            </fieldset>
            <fieldset class="right-checkbox disabled">
              <div class="custom-control custom-checkbox">
                <input type="checkbox" class="custom-control-input" checked name="customCheckRight" id="customCheckRight4" disabled="">
                <label class="custom-control-label" for="customCheckRight4">Custom checkbox checked &amp; disabled</label>
              </div>                
            </fieldset>
        -->
          </div>
        </div>
      
    </div>

<div class="content-body">
    <div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Striped rows</h4>
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
                <div class="card-body">
                   
                </div>
                <div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Brand Name</th>
                          <th scope="col">Edit</th>
                          
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        $select_brand = mysqli_query($conn,"select * from brands");
                        $i=0;
                        foreach ($select_brand as $col)
                        {
                        ?>
                        <tr>
                          <th scope="row"><?php echo $i=$i+1;?></th>
                          <td><?php echo $col['brand_name'];?></td>
                          <td>Edit</td>
                         
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