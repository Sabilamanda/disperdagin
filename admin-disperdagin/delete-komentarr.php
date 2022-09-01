	 <?php
	  include "koneksi.php";
	  if($koneksi){
	  $id_komen= $_GET['id_komen']; //id dari usernya, id mana yang mau di delete 
	  $SQL = "DELETE FROM komentarr WHERE id_komen='$id_komen'";  // id database di mecingin di id di user misal 1 dan 1 .
	  $hasil_query = mysqli_query ($koneksi,$SQL) // cek 
	  or die ("Proses hapus data gagal!<br> <a href=komentarr.php>
	  lihat data berita</a>");
	  if ($hasil_query)
	  echo "<script language='javascript'>alert('Data berhasil dihapus');document.location='komentarr.php'</script>";
	  }
	  ?>