<?php
	  include "koneksi.php";
	  if($koneksi){
	  $id= $_GET['id']; //id dari usernya, id mana yang mau di delete 
	  $SQL = "DELETE FROM umkm1 WHERE id_umkm='$id'";  // id database di mecingin di id di user misal 1 dan 1 .
	  $hasil_query = mysqli_query ($koneksi,$SQL) // cek 
	  or die ("Proses hapus data gagal!<br> <a href=produk-umkm.php>
	  lihat data produk</a>");
	  if ($hasil_query)
	  echo "<script language='javascript'>alert('Data berhasil dihapus');document.location='produk-umkm.php'</script>";
	  }
	  ?>