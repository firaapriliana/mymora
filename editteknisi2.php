<!DOCTYPE html>
<?php
require './includes/config.php';

if (!isset($_SESSION['admin'])) {
    header('Location: login.php');
    exit;
}
?>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SISTEM LAPORAN GANGGUAN DATEL LAMONGAN</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">DASHBOARD<sup></sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="indexteknisi.php">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>HOME</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Menu
      </div>




      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Pencarian Data</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Cari Berdasarkan:</h6>
            <a class="collapse-item" href="pencarian.php">Berdasar Bulan</a>
            <a class="collapse-item" href="pencarian2.php">Berdasar Tiket</a>
          </div>
        </div>
      </li>



      <!-- Nav Item - Progress Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="ps.php" aria-expanded="true">
           <i class="fas fa-fw fa-truck"></i>
           <span>Progress</span>
        </a>





      <!-- Divider -->
<!--       <hr class="sidebar-divider"> -->

      <!-- Heading -->
<!--       <div class="sidebar-heading">
        Addons
      </div> -->

      <!-- Nav Item - Pages Collapse Menu -->
<!--       <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>

      <!-- Nav Item - Tables
      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
      </li> -->

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

           <!-- Topbar Navbar Title -->
          <ul class="navbar-nav">
            <h5>SISTEM LAPORAN GANGGUAN DATEL LAMONGAN</h5>
          </ul>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $_SESSION['username']?></span>
                <i class="fas fa-fw fa-user-circle"></i>
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

         <!-- Main Content -->
           <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Import Data Gangguan</h1>
          <p class="mb-4">Memasukkan data rekam gangguan dari chatbot untuk dimasukkan kedalam sistem pelaporan</p>

             <!-- Card Cari-->
              <div class="card mb-4">
                <div class="card-header">
                  <h1>Edit Biodata Penduduk</h1>
                  <?php
// include database connection file
include"conn.php";

?>
<?php
// Display selected user data based on id
// Getting id from url

$nomor = $_GET['NoInet'];
	$query_mysql = mysqli_query($koneksi,"SELECT * FROM tbl_tambahanteknisitemp WHERE NoInet='$nomor'")or die(mysql_error());
	while($data = mysqli_fetch_array($query_mysql)){
	?>

<html>
<head>
    <title>Edit User Data</title>
</head>
<body>

    <form from action="updateteknisi2.php" method="post">
		<table class="table-bordered table-striped">
        	<tr> <!--baris, td : kolom-->
				<td>tanggal</td>
				<td><textarea input type="text" name="tanggal"readonly="readonly" rows="1" cols="21"><?php echo $data['tanggal'];?></textarea></td>
			</tr>
			<tr>
				<td>jam</td>
				<td><textarea input type="text" name="jam"readonly="readonly" rows="1" cols="21"><?php echo $data['jam'];?></textarea></td>
			</tr>
			<tr>
				<td>NoInet</td>
				<td><textarea input type="text" name="NoInet"readonly="readonly" rows="1" cols="21"><?php echo $data['NoInet'];?></textarea></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td><textarea input type="text" name="nama"readonly="readonly" rows="1" cols="21"><?php echo $data['nama'];?></textarea></td>
			</tr>
			<tr>
				<td>Alamat</td>
				<td><textarea input type="text" name="alamat"readonly="readonly" rows="1" cols="21"><?php echo $data['alamat'];?></textarea></td>
			</tr>
			<tr>
				<td>CP</td>
				<td><textarea input type="text" name="CP"readonly="readonly" rows="1" cols="21"><?php echo $data['CP'];?></textarea></td>
			</tr>
			<tr>
				<td>keluhan</td>
				<td><textarea input type="text" name="keluhan"readonly="readonly" rows="1" cols="21"><?php echo $data['keluhan'];?></textarea></td>
			</tr>
			<tr>
				<td>Jenis_Gangguan</td>
				<td><textarea input type="text" name="Jenis_Gangguan"readonly="readonly" rows="1" cols="21"><?php echo $data['Jenis_Gangguan'];?></textarea></td>
			</tr>
			<tr>
				<td>Sub_Gangguan</td>
				<td><textarea input type="text" name="Sub_Gangguan"readonly="readonly" rows="1" cols="21"><?php echo $data['Sub_Gangguan'];?></textarea></td>
			</tr>
			<tr>
				<td>status</td>
				<td><textarea input type="text" name="status" rows="1" cols="21"><?php echo $data['status'];?></textarea></td>
			</tr>
			<tr>
				<td>tiket</td>
				<td><textarea input type="text" name="tiket" rows="1" cols="21"><?php echo $data['tiket'];?></textarea></td>
			</tr>

			<tr>
				<td ><input type="submit" name="submit" value="Simpan" class="btn btn-danger"></td>
				<td ><input type="reset" name="reset" value="Reset" class="btn btn-primary"></td>
				<a href="indexteknisi.php?a=ps&k=ps">Batal Mengubah Data</a>
			</tr>

        </table>
    </form>

    <?php } ?>
</div>
</body>
</html>

                </div>
              </div>

        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->


      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Telkom Lamongan 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">??</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
