<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

	// membuat variabel untuk menampung data dari form
  $id 				= $_POST['file_id'];
  $name				= $_POST['name'];
  $file         	= $_FILES['file']['name'];
 
  //cek dulu jika merubah gambar produk jalankan coding ini
  if($file != "") {
    $ekstensi_diperbolehkan = array('pdf','doc'); //ekstensi file gambar yang bisa diupload 
    $x = explode('.', $file); //memisahkan nama file dengan ekstensi yang diupload
    $ekstensi = strtolower(end($x));
    $file_tmp = $_FILES['file']['tmp_name'];   
  
    $nama_file_baru = $file; //menggabungkan angka acak dengan nama file sebenarnya
    if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {
                  move_uploaded_file($file_tmp, 'dokumen/'.$nama_file_baru); //memindah file gambar ke folder gambar
                      
                    // jalankan query UPDATE berdasarkan ID yang produknya kita edit
                   $query  = "UPDATE file SET name = '$name', file ='$nama_file_baru'";
                    $query .= "WHERE file_id = '$id'";
                    $result = mysqli_query($koneksi, $query);
                    // periska query apakah ada error
                    if(!$result){
                        die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                             " - ".mysqli_error($koneksi));
                    } else {
                      //tampil alert dan akan redirect ke halaman index.php
                      //silahkan ganti index.php sesuai halaman yang akan dituju
                      echo "<script>alert('Data Dokumen berhasil diubah.');window.location='dokumen.php';</script>";
                    }
              } else {     
               //jika file ekstensi tidak pdf dan doc maka alert ini yang tampil
                  echo "<script>alert('Ekstensi gambar yang boleh hanya pdf atau doc.');window.location='edit-dokumen.php';</script>";
              }
    } else {
      // jalankan query UPDATE berdasarkan ID yang produknya kita edit
      $query  = "UPDATE file SET name = '$name'";
      $query .= "WHERE file_id = '$id'";
      $result = mysqli_query($koneksi, $query);
      // periska query apakah ada error
      if(!$result){
            die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                             " - ".mysqli_error($koneksi));
      } else {
        //tampil alert dan akan redirect ke halaman index.php
        //silahkan ganti index.php sesuai halaman yang akan dituju
          echo "<script>alert('Data Dokumen berhasil diubah.');window.location='dokumen.php';</script>";
      }
    }
