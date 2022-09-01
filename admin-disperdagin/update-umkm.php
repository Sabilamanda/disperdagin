<?php

								include "koneksi.php";

								if($koneksi){
									// ID, USERNAME, PASSWORD yang diedit oleh user
									$id				= $_POST['id']; // diketik user dikasih disini
									$nama			= $_POST['nama'];
									$alamat	        = $_POST['alamat'];
									$kelurahan		= $_POST['kelurahan'];
									$kecamatan		= $_POST['kecamatan'];
									$produk			= $_POST['produk'];
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE umkm SET id='$id', nama='$nama', alamat='$alamat', kelurahan='$kelurahan', kecamatan='$kecamatan', produk='$produk' WHERE id='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data umkm gagal");
								  echo "<script language='javascript'>
								  alert('Data umkm Berhasil Diubah');document.location='umkm.php'</script>";
								  
								}
			  
								  
							?>