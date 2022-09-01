<?php

								include "koneksi.php";

								if($koneksi){
        }
									
								  $id_komen		= $_POST['id_komen']; // diketik user dikasih disini
								  $nama_komen	= $_POST['nama_komen'];
								  $email_komen	= $_POST['email_komen'];
								  $tlp			= $_POST['tlp'];
								  $pekerjaan	= $_POST['pekerjaan'];
								  $pesan		= $_POST['pesan'];								
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE komentarr SET nama_komen='$nama_komen', email_komen='$email_komen', tlp='$tlp', pekerjaan='$pekerjaan', pesan='$pesan' WHERE id_komen='$id_komen'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data komentar gagal");
								  echo "<script language='javascript'>
								  alert('Data komentar Berhasil Diubah');document.location='komentarr.php'</script>";
								  
							
			  
								  
							?>