<?php

								include "koneksi.php";

								if($koneksi){
									// ID, USERNAME, PASSWORD yang diedit oleh user
									$id=$_POST['id_admin']; // diketik user dikasih disini
								  $nama=$_POST['nama'];
								  $username=$_POST['username'];
								  $password=$_POST['password'];
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE admin SET id_admin='$id', nama='$nama', username='$username', password='$password' WHERE id_admin='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data admin gagal");
								  echo "<script language='javascript'>
								  alert('Data admin Berhasil Diubah');document.location='admin.php'</script>";
								  
								}
			  
								  
							?>