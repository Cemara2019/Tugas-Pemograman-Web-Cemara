<?php

include_once("koneksi.php");
 
$id = $_GET['id_kantor'];
$data = mysqli_query($koneksi, "DELETE FROM tb_kantor WHERE id_kantor='$id'");
 
header("Location:kantor.php");
?>