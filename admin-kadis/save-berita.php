<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

// membuat variabel untuk menampung data dari form

				$id=$_POST['id_berita']; // diketik user dikasih disini
				$judul=$_POST['judul'];
				$kategori=$_POST['kategori'];
				$isi=$_POST['isi'];
				$foto=$_FILES['foto']['name'];
 


//cek dulu jika ada gambar produk jalankan coding ini
if($foto != "") {
  $ekstensi_diperbolehkan = array('png','jpg','jpeg'); //ekstensi file gambar yang bisa diupload
  $x = explode('.', $foto); //memisahkan nama file dengan ekstensi yang diupload
  $ekstensi = strtolower(end($x));
  $file_tmp = $_FILES['foto']['tmp_name'];  
 
  $nama_gambar_baru = $foto; //menggabungkan angka acak dengan nama file sebenarnya
        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {    
                move_uploaded_file($file_tmp, 'foto/berita/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
                  // jalankan query INSERT untuk menambah data ke database pastikan sesuai urutan (id tidak perlu karena dibikin otomatis)
                  $query = "INSERT INTO berita(id_berita, judul, kategori, isi, foto) VALUES ('$id','$judul','$kategori','$isi','$nama_gambar_baru')";
                  $result = mysqli_query($koneksi, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                           " - ".mysqli_error($koneksi));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data Berita berhasil ditambah.');window.location='berita.php';</script>";
                  }

            } else {    
             //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
                echo "<script>alert('Ekstensi gambar yang boleh hanya jpg atau png.');window.location='tambah-berita.php';</script>";
            }
} else {
   $query = "INSERT INTO berita (id_berita, judul, kategori, isi, foto) VALUES ('$id','$judul','$kategori','$isi')";
                  $result = mysqli_query($koneksi, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                           " - ".mysqli_error($koneksi));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data berhasil ditambah.');window.location='berita.php';</script>";
                  }
}	

						