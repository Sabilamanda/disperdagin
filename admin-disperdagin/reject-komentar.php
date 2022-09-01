	 <?php
	  include "koneksi.php";
	  if($koneksi){
	  $id= $_GET['id']; //id dari usernya, id mana yang mau di delete 
	  $SQL = "DELETE FROM komentar WHERE id_komentar='$id'";  // id database di mecingin di id di user misal 1 dan 1 .
	  $hasil_query = mysqli_query ($koneksi,$SQL) // cek 
	  or die ("Proses hapus data gagal!<br> <a href=komentar.php>
	  lihat data admin</a>");
	  if ($hasil_query)
	  echo "<script language='javascript'>alert('komentar berhasil dihapus');document.location='komentar.php'</script>";
	  }
	  ?>
	  
	  
	  