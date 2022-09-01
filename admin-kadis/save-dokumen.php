<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

// membuat variabel untuk menampung data dari form

  $name = $_POST['name'];
  $file = $_FILES['file']['name'];
 
//cek dulu jika ada gambar produk jalankan coding ini
if($file != "") {
  $ekstensi_diperbolehkan = array('pdf','doc'); //ekstensi file gambar yang bisa diupload
  $x = explode('.', $file); //memisahkan nama file dengan ekstensi yang diupload
  $ekstensi = strtolower(end($x));
  $file_tmp = $_FILES['file']['tmp_name'];  

  $nama_gambar_baru = $file; //menggabungkan angka acak dengan nama file sebenarnya
        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {    
                move_uploaded_file($file_tmp, 'dokumen/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
                  // jalankan query INSERT untuk menambah data ke database pastikan sesuai urutan (id tidak perlu karena dibikin otomatis)
                  $query = "INSERT INTO file (name, file) VALUES ('$name', '$nama_gambar_baru')";
                  $result = mysqli_query($koneksi, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                           " - ".mysqli_error($koneksi));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data Dokumen berhasil ditambah.');window.location='dokumen.php';</script>";
                  }

            } else {    
             //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
                echo "<script>alert('Ekstensi file yang boleh hanya pdf atau doc.');window.location='dokumen.php';</script>";
            }
} else {
   $query = "INSERT INTO file (name, file) VALUES ('$name')";
                  $result = mysqli_query($koneksi, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                           " - ".mysqli_error($koneksi));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data Dokumen berhasil ditambah.');window.location='dokumen.php';</script>";
                  }
}

