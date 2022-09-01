<!DOCTYPE html>
<html>
<head>
 <title>Data TOKO SWALAYAN</title>
</head>
<body>
 <style type="text/css">
 body{
 font-family: sans-serif;
 }
 table{
 margin: 20px auto;
 border-collapse: collapse;
 }
 table th,
 table td{
 border: 1px solid #3c3c3c;
 padding: 3px 8px;

 }
 a{
 background: blue;
 color: #fff;
 padding: 8px 10px;
 text-decoration: none;
 border-radius: 2px;
 }

    .tengah{
        text-align: center;
    }
 </style>
 <table>
 <tr>
 <th>No</th>
 <th>Nama Gerai</th>
 <th>Jenis</th>
 <th>Alamat</th>
 <th>Kecamatan</th>
 </tr>
 <?php 
 // koneksi database
 $koneksi = mysqli_connect("localhost","root","","daginn");

 // menampilkan data pegawai
 $data = mysqli_query($koneksi,"select * from swalayan");
 while($d = mysqli_fetch_array($data)){
 ?>
 <tr>
 <td style='text-align: center;'><?php echo $d['id_gerai'] ?></td>
 <td><?php echo $d['nama_gerai']; ?></td>
 <td><?php echo $d['jenis_gerai']; ?></td>
 <td><?php echo $d['alamat_gerai']; ?></td>
 <td><?php echo $d['kecamatan_gerai']; ?></td>
 </tr>
 <?php 
 }
 ?>
    </table>
    <script>
 window.print();
 </script>
</body>
</html>