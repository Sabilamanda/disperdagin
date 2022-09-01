<?php
// memanggil file koneksi.php untuk melakukan koneksi database
include 'koneksi.php';

// membuat variabel untuk menampung data dari form

		
		$nama_produk=$_POST['nama_produk'];
		$kategori=$_POST['kategori'];
		$alamat=$_POST['alamat'];
		$gmbr= $_FILES['gmbr']['name'];
 


//cek dulu jika ada gambar produk jalankan coding ini
if($gmbr!= "") {
  $ekstensi_diperbolehkan = array('png','jpg','jpeg'); //ekstensi file gambar yang bisa diupload
  $x = explode('.', $gmbr); //memisahkan nama file dengan ekstensi yang diupload
  $ekstensi = strtolower(end($x));
  $file_tmp = $_FILES['gmbr']['tmp_name'];  
 
  $nama_gambar_baru = $gmbr; //menggabungkan angka acak dengan nama file sebenarnya
        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {    
                move_uploaded_file($file_tmp, 'foto/produk/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
                  // jalankan query INSERT untuk menambah data ke database pastikan sesuai urutan (id tidak perlu karena dibikin otomatis)
                  // ini dirubah line 26 menjadi nama tabel
                  $query = "INSERT INTO umkm1 (nama_produk, kategori, alamat, gmbr) VALUES ('$nama_produk', '$kategori', '$alamat', '$nama_gambar_baru')";
                  $result = mysqli_query($koneksi, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                           " - ".mysqli_error($koneksi));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data Produk berhasil ditambah.');window.location='produk-umkm.php';</script>";
                  }

            } else {    
             //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
                echo "<script>alert('Ekstensi gambar yang boleh hanya jpg atau png.');window.location='tambah-produk-umkm.php';</script>";
            }
} else {
   $query = "INSERT INTO produk-umkm (nama_produk, kategori, alamat, gmbr) VALUES ('$nama_produk', '$kategori', '$alamat')";
                  $result = mysqli_query($koneksi, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($koneksi).
                           " - ".mysqli_error($koneksi));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data berhasil ditambah.');window.location='produk-umkm.php';</script>";
                  }
}
						