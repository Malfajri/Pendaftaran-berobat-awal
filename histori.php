<?php 
session_start();

if (!isset($_SESSION['user'])) {
 echo "<script>
 window.location.replace('session/login.php');
 </script>";
 exit;
}

require 'functions.php';

$username = $_SESSION['username'];
$keluhan = mysqli_query($conn, "SELECT * FROM keluhan INNER JOIN pasien ON pasien.id=keluhan.id_pasien WHERE username = '$username' ORDER BY keluhan.id DESC");

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <?php include 'link.php'; ?>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <?php include 'sidebar.php'; ?>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <?php include 'topbar.php'; ?>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Content Row -->
          <div class="row">


            <div class="col mb-4">

              <!-- Data -->
              <div class="card shadow mb-4">
                <!-- Card Header - Accordion -->
                <a href="#card-pegawai" class="d-block card-header py-3" data-toggle="collapse"
                role="button" aria-expanded="true" aria-controls="card-pegawai">
                <h6 class="m-0 font-weight-bold text-primary">Data Keluhan</h6>
              </a>
              <!-- Card Content - Collapse -->
              <div class="collapse show" id="card-pegawai">
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th>No</th>
                          <th>Nama</th>
                          <th>Jenis Kelamin</th>
                          <th>Umur</th>
                          <th>Jawatan</th>
                          <th>Pilihan Poli</th>
                          <th>Keluhan</th>
                          <th>Hasil Diagnosa</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php $i=1; ?>
                        <?php foreach ($keluhan as $data) : ?>
                          <tr>
                            <th><?= $i; ?></th>
                            <td><?= $data['nama']; ?></td>
                            <td><?= $data['jenis_kelamin']; ?></td>
                            <td><?= $data['umur']; ?></td>
                            <td><?= $data['jawatan']; ?></td>
                            <td><?= $data['pilihan_poli']; ?></td>
                            <td><?= $data['keluhan']; ?></td>
                            <td><?= $data['hasil_diagnosa']; ?></td>
                          </tr>
                          <?php $i++; ?>
                        <?php endforeach; ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
      <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
      <div class="container my-auto">
        <div class="copyright text-center my-auto">
          <span>&copy; BATALYON KESEHATAN TNI AU 2022
          </span>
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



<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="js/sb-admin-2.min.js"></script>

</body>

</html>