<?php

								include "koneksi.php";

								if($koneksi){
        }
									
								  $id			= $_POST['id_ikm']; // diketik user dikasih disini
								  $nama_toko	= $_POST['nama_toko'];
								  $nama_pemilik	= $_POST['nama_pemilik'];
								  $alamat		= $_POST['alamat'];
								  $kecamatan	= $_POST['kecamatan'];
								  $jns_usaha	= $_POST['jns_usaha'];							
								  
									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE ikm SET nama_toko='$nama_toko', nama_pemilik='$nama_pemilik', alamat='$alamat', kecamatan='$kecamatan', jns_usaha='$jns_usaha' WHERE id_ikm='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data komentar gagal");
								  echo "<script language='javascript'>
								  alert('Data komentar Berhasil Diubah');document.location='ikm.php'</script>";
								  
							
			  
								  
							?>