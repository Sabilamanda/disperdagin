<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

// membuat variabel untuk menampung data dari form

				$tanggal = $_POST['tanggal'];
				$judul=$_POST['judul'];
				$penulis=$_POST['penulis'];
				$gambar=$_FILES['gambar']['name'];
				$deskripsi=$_POST['deskripsi'];
 


//cek dulu jika ada gambar produk jalankan coding ini
if($gambar != "") {
  $ekstensi_diperbolehkan = array('png','jpg','jpeg'); //ekstensi file gambar yang bisa diupload
  $x = explode('.', $gambar); //memisahkan nama file dengan ekstensi yang diupload
  $ekstensi = strtolower(end($x));
  $file_tmp = $_FILES['gambar']['tmp_name'];  
 
  $nama_gambar_baru = $gambar; //menggabungkan angka acak dengan nama file sebenarnya
        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {    
                move_uploaded_file($file_tmp, 'artikel/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
                  // jalankan query INSERT untuk menambah data ke database pastikan sesuai urutan (id tidak perlu karena dibikin otomatis)
                  $query = "INSERT INTO artikel (tanggal, judul, penulis, deskripsi, gambar) VALUES ('$tanggal','$judul','$penulis','$deskripsi','$nama_gambar_baru')";
                  $result = mysqli_query($koneksi, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                           " - ".mysqli_error($koneksi));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data Artikel berhasil ditambah.');window.location='artikel.php';</script>";
                  }

            } else {    
             //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
                echo "<script>alert('Ekstensi gambar yang boleh hanya jpg atau png.');window.location='tambah-artikel.php';</script>";
            }
} else {
   $query = "INSERT INTO artikel (tanggal, judul, penulis, deskripsi, gambar) VALUES ('$tanggal','$judul','$penulis','$deskripsi')";
                  $result = mysqli_query($koneksi, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                           " - ".mysqli_error($koneksi));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data berhasil ditambah.');window.location='artikel.php';</script>";
                  }
}	

						