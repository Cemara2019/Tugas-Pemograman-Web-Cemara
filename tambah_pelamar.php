<?php 
    include_once 'koneksi.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tambah Pelamar</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-7">
                        <div class="p-5">
                            <form class="user" action="" method="POST">
                                <div class="form-group">
                                    <input type="text" name="nama_pelamar" class="form-control form-control-user" 
                                        placeholder="Nama" >
                                </div>
                                <div class="form-group">
                                    <input type="number" name="umur_pelamar" class="form-control form-control-user"
                                        placeholder="Umur" >
                                </div>
                                <div class="form-group">
                                    <input type="text" name="alamat_pelamar" class="form-control form-control-user"
                                        placeholder="Alamat" >
                                </div>
                                <div class="form-group">
                                    <input type="text" name="pengalaman_terakhir" class="form-control form-control-user"
                                        placeholder="Pengalaman" >
                                </div>
                                <button type="Submit" name="submit" class="btn btn-primary btn-user btn-block">Submit </button>
                            </form>
                            <?php
 

  if(isset($_POST['submit'])) {
    $nama_pelamar = $_POST['nama_pelamar'];
    $umur_pelamar = $_POST['umur_pelamar'];
    $alamat_pelamar = $_POST['alamat_pelamar'];
    $pengalaman_terakhir = $_POST['pengalaman_terakhir'];

    $result = mysqli_query($koneksi, "INSERT INTO tb_pelamar(id_pelamar,nama_pelamar,umur_pelamar,alamat_pelamar,pengalaman_terakhir) VALUES('','$nama_pelamar','$umur_pelamar','$alamat_pelamar','$pengalaman_terakhir')");
    
    echo "<div align='center'><h4> Data Berhasil Di Tambahkan </h4> </div>";
    echo "<meta http-equiv='refresh' content='1;url=http://localhost/cemara/pelamar.php'>";
  }
  ?>
                        </div>
                    </div>
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

</body>

</html>