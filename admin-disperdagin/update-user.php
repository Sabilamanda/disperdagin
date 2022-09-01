<?php

								include "koneksi.php";

								if($koneksi){
									// ID, USERNAME, PASSWORD yang diedit oleh user
									$id=$_POST['id']; // diketik user dikasih disini
								  $nama=$_POST['nama'];
								  $username=$_POST['username'];
								  $password=$_POST['password'];
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE user SET nama='$nama', username='$username', password='$password' WHERE id_user='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data user gagal");
								  echo "<script language='javascript'>
								  alert('Data user Berhasil Diubah');document.location='user.php'</script>";
								  
								}
			  
								  
							?>