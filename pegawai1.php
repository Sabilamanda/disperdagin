<?php
include ('header.php');
//melakukan koneksi ke database
$koneksi        = mysqli_connect("localhost", "root", "", "daginn");

//mengambil data mahasiswa
$select         = "select * from pegawai";
$select         = mysqli_query($koneksi, $select);



?>
<!-- datatable style -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

 <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Pusat Media</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Berita</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->
	<br><br>
	
<!-- membuat tabel -->
<table id="table_id" border=1 class="display">
    <thead>
        <tr>
			<th>No</th>
            <th>NIP</th>
            <th>Nama Pegawai</th>
            <th>Jenis</th>
            <th>Jabatan</th>
        </tr>
    </thead>
    <tbody>
        <?php
            //include file database untuk dapat menggunakan fungsi-fungsi di dalamnya
            include "koneksi.php";

            //membuat variabell index penomoran
            $no = 1;

            //melakukan perualangan data dengan while
            while($data= mysqli_fetch_array($select)){
        ?>
        <tr>
            <!-- menampilkan data -->
            <td><?php echo $no++; ?></td>
            <td><?php echo $data['nip']; ?></td>
            <td><?php echo $data['nama_peg']; ?></td>
            <td><?php echo $data['jenis']; ?></td>
            <td><?php echo $data['jabatan']; ?></td>
        </tr>
            <?php } ?>
    </tbody>
</table>
<!-- jquery datatable -->
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<!-- fungsi datatable -->
<script>
$(document).ready( function () {
    $('#table_id').DataTable();
} );
</script>