	 <?php
	  include "koneksi.php";
	  if($koneksi){
	  $file_id= $_GET['file_id']; //id dari usernya, id mana yang mau di delete 
	  $SQL = "DELETE FROM file WHERE file_id='$file_id'";  // id database di mecingin di id di user misal 1 dan 1 .
	  $hasil_query = mysqli_query ($koneksi,$SQL) // cek 
	  or die ("Proses hapus data gagal!<br> <a href=dokumen.php>
	  lihat data dokumen</a>");
	  if ($hasil_query)
	  echo "<script language='javascript'>alert('Data berhasil dihapus');document.location='dokumen.php'</script>";
	  }
	  ?>