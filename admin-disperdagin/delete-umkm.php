	 <?php
	  include "koneksi.php";
	  if($koneksi){
	  $id= $_GET['id']; //id dari usernya, id mana yang mau di delete 
	  $SQL = "DELETE FROM umkm WHERE id='$id'";  // id database di mecingin di id di user misal 1 dan 1 .
	  $hasil_query = mysqli_query ($koneksi,$SQL) // cek 
	  or die ("Proses hapus data gagal!<br> <a href=umkm.php>
	  lihat data umkm</a>");
	  if ($hasil_query)
	  echo "<script language='javascript'>alert('Data berhasil dihapus');document.location='umkm.php'</script>";
	  }
	  ?>