<?php

								include "koneksi.php";

								if($koneksi){
        }
									
								  $id			= $_POST['id_komentar']; // diketik user dikasih disini
								  $nama			= $_POST['nama'];
								  $email		= $_POST['email'];
								  $isi_komentar	= $_POST['isi_komentar'];
								  $id_berita	= $_POST['id_berita'];
								  $status_komentar		= $_POST['status_komentar'];								
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE komentar SET nama='$nama', email='$email', isi_komentar='$isi_komentar', id_berita='$id_berita', status_komentar='$status_komentar' WHERE id_komentar='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data komentar gagal");
								  echo "<script language='javascript'>
								  alert('Data komentar Berhasil Diubah');document.location='komentar.php'</script>";
								  
							
			  
								  
							?>