<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

	// membuat variabel untuk menampung data dari form
				$id				= $_POST['id']; // diketik user dikasih disini
				$nama_usaha	= $_POST['nama_usaha'];
				$jenis_usaha		= $_POST['jenis_usaha'];
				$alamatt	        = $_POST['alamatt'];
				$gambarr    		= $_FILES['gambarr']['name'];
				
  //cek dulu jika merubah gambar produk jalankan coding ini
  if($gambarr != "") {
    $ekstensi_diperbolehkan = array('png','jpg','jpeg'); //ekstensi file gambar yang bisa diupload 
    $x = explode('.', $gambarr); //memisahkan nama file dengan ekstensi yang diupload
    $ekstensi = strtolower(end($x));
    $file_tmp = $_FILES['gambarr']['tmp_name'];   
    $angka_acak     = rand(1,999);
    $nama_gambar_baru = $angka_acak.'-'.$gambarr; //menggabungkan angka acak dengan nama file sebenarnya
    if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {
                  move_uploaded_file($file_tmp, 'foto/produkk/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
                      
                    // jalankan query UPDATE berdasarkan ID yang produknya kita edit
                   $query  = "UPDATE produkk SET nama_usaha = '$nama_usaha', jenis_usaha = '$jenis_usaha', alamatt = '$alamatt', gambarr = '$nama_gambar_baru'";
                    $query .= "WHERE id_produkk = '$id'";
                    $result = mysqli_query($koneksi, $query);
                    // periska query apakah ada error
                    if(!$result){
                        die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                             " - ".mysqli_error($koneksi));
                    } else {
                      //tampil alert dan akan redirect ke halaman index.php
                      //silahkan ganti index.php sesuai halaman yang akan dituju
                      echo "<script>alert('Data Produkk berhasil diubah.');window.location='produkk.php';</script>";
                    }
              } else {     
               //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
                  echo "<script>alert('Ekstensi gambar yang boleh hanya jpg atau png.');window.location='edit-produkk.php';</script>";
              }
    } else {
      // jalankan query UPDATE berdasarkan ID yang produknya kita edit
      $query  = "UPDATE produkk SET nama_usaha = '$nama_usaha', jenis_usaha = '$jenis_usaha', alamatt = '$alamatt'";
      $query .= "WHERE id_produkk = '$id'";
      $result = mysqli_query($koneksi, $query);
      // periska query apakah ada error
      if(!$result){
            die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                             " - ".mysqli_error($koneksi));
      } else {
        //tampil alert dan akan redirect ke halaman index.php
        //silahkan ganti index.php sesuai halaman yang akan dituju
          echo "<script>alert('Data Produk berhasil diubah.');window.location='produkk.php';</script>";
      }
    }
