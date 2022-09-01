<?php

								include "koneksi.php";

								if($koneksi){
        }
									
								  $id			= $_POST['id_pegawai']; // diketik user dikasih disini
								  $nip			= $_POST['nip'];
								  $nama_peg		= $_POST['nama_peg'];
								  $golongan		= $_POST['golongan'];
								  $jk		    = $_POST['jk'];
								  $jenis		= $_POST['jenis'];
								  $jabatan		= $_POST['jabatan'];
								  $foto    		= $_FILES['foto']['name'];	
								  
								   //cek dulu jika merubah gambar produk jalankan coding ini
									if($foto != "") {
										$ekstensi_diperbolehkan = array('png','jpg','jpeg'); //ekstensi file gambar yang bisa diupload 
										$x = explode('.', $foto); //memisahkan nama file dengan ekstensi yang diupload
										$ekstensi = strtolower(end($x));
										$file_tmp = $_FILES['foto']['tmp_name'];   
										$angka_acak     = rand(1,999);
										$nama_gambar_baru = $angka_acak.'-'.$foto; //menggabungkan angka acak dengan nama file sebenarnya
										if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {
													move_uploaded_file($file_tmp, 'img/admin/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
													
													// jalankan query UPDATE berdasarkan ID yang produknya kita edit
													$query  = "UPDATE admin SET email = '$email', username = '$username', password = '$password', foto = '$nama_gambar_baru'";
													//  $query  = "UPDATE pegawai SET email = '$email', username = '$username', password = '$password', foto = '$nama_gambar_baru'";
													$query .= "WHERE id_admin = '$id'";
													// $query .= "WHERE id_pegawai = '$id'";
													$result = mysqli_query($koneksi, $query);
													// periska query apakah ada error
													if(!$result){
														die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
															" - ".mysqli_error($koneksi));
													} else {
													//tampil alert dan akan redirect ke halaman index.php
													//silahkan ganti index.php sesuai halaman yang akan dituju
													echo "<script>alert('Data Produk berhasil diubah.');window.location='pegawai.php';</script>";
													}
											} else {     
											//jika file ekstensi tidak jpg dan png maka alert ini yang tampil
												echo "<script>alert('Ekstensi gambar yang boleh hanya jpg atau png.');window.location='edit-pegawai.php';</script>";
											}
									} else {
									// jalankan query UPDATE berdasarkan ID yang produknya kita edit
									$query  = "UPDATE admin SET email = '$email', username = '$username', password = '$password'";
									$query .= "WHERE id_admin = '$id'";
									// $query  = "UPDATE pegawai SET email = '$email', username = '$username', password = '$password'";
									// $query .= "WHERE id_pegawai = '$id'";
									$result = mysqli_query($koneksi, $query);
									// periska query apakah ada error
									if(!$result){
											die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
															" - ".mysqli_error($koneksi));
									} else {
										//tampil alert dan akan redirect ke halaman index.php
										//silahkan ganti index.php sesuai halaman yang akan dituju
										echo "<script>alert('Foto berhasil diubah.');window.location='pegawai.php';</script>";
									}
									}



									//kodingan untuk update data
									//update tabel dimana nilai dari database harus diset sama dengan yang diedit oleh user
									//
								   $SQL = "UPDATE pegawai SET nip='$nip', nama_peg='$nama_peg', golongan='$golongan', jk='$jk', jenis='$jenis', jabatan='$jabatan', foto='$foto' WHERE id_pegawai='$id'";
								   mysqli_query ($koneksi,$SQL) or die ("Proses Edit Data pegawai gagal");
								  echo "<script language='javascript'>
								  alert('Data pegawai Berhasil Diubah');document.location='pegawai.php'</script>";
								  
							
			  
								  
							?>

