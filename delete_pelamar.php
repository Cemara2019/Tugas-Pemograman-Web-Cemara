<?php

include_once("koneksi.php");
 
$id = $_GET['id_pelamar'];
$data = mysqli_query($koneksi, "DELETE FROM tb_pelamar WHERE id_pelamar='$id'");
 
header("Location:pelamar.php");
?>