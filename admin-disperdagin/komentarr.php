<?php
ob_start();
session_start();
	  include "koneksi.php";
	  /*sertakan kodingan di bawah ini untuk setiap halaman admin*/
	  /*session_start();
	  //periksa apakah user telah login atau belum
	  if(!isset($_SESSION[['user']) 
	  || !isset($_SESSION['passwd'])){
	  ?><script language="javascript">
	  alert ('anda belum login please login dulu');
	  document.location='index.php'</script><?
      }else{
      ?>*/
	  //periksa apakah user telah login atau belum
	  if(!isset($_SESSION['username']) || !isset($_SESSION['password'])){
	  ?><script language="javascript">
	  alert ('anda belum login please login dulu');
	  document.location='index.php'</script><?php
      }else{
      ?><?php
	//get the function
	include_once('function.php');

	$page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
	//$limit untuk menentukan banyaknya baris halaman dalam tabel
	$limit = 3;
	//menentukan nomor mulai pada paaging untuk halaman berikutnya
	$startpoint = ($page * $limit) - $limit;

	//tabel yang mau di tampilin pake paging 
	$tabel = "komentarr";
?><!DOCTYPE html>
<?php
	include ('header.php');
	?>
	<html>

<head>
    <title>Halaman Komentar</title>


        <!-- Single pro tab start-->
        <div class="single-product-tab-area mg-t-15 mg-b-30">
            <div class="container-fluid">
                <div class="row">
				
																							
                     <div class="x-editable-area mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="x-editable-list">
                            <div class="alert-title">
                                <h2>DAFTAR KOMENTAR</h2>                   
                            </div>
						
							
							
							<!-- Tabel daftar komentar -->
							<div class="table-responsive">
                            <table id="user" class="table table-bordered table-striped x-editor-custom">
                                <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Nomor Telpon</th>
					<th>Pekerjaan</th>
                    <th>Pesan</th>
                    <th colspan ="2" align="middle">Aksi</th>
                </tr>
                </thead>
                <tbody>
                    <?php
                        // include database
                        include 'koneksi.php';
                        // perintah sql untuk menampilkan daftar komentar
                        $perintah_sql = "select * from $tabel LIMIT $startpoint , $limit";
                        $hasil=mysqli_query($koneksi,$perintah_sql);
                        $no=0;
                        //Menampilkan data dengan perulangan while
                        while ($data = mysqli_fetch_array($hasil)):
                        $no++;
                    ?>
                    <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $data['nama_komen']; ?></td>
                        <td><?php echo $data['email_komen']; ?></td>
                        <td><?php echo $data['tlp']; ?></td>
                        <td><?php echo $data['pekerjaan']; ?></td>
                        <td><?php echo substr($data['pesan'], 0, 25);?>...</td>
                        <td>
						<a href="edit-komentarr.php?id_komen=<?php echo $data['id_komen']; ?>"><button class='btn btn-danger btn-xs'>
													<i class='fa fa-pencil'></i></button></a> |
						  <a href="delete-komentarr.php?id_komen=<?php echo $data['id_komen']; ?>" onclick="return confirm('Anda yakin akan menghapus data ini?')">
						  <button class='btn btn-danger btn-xs'><i class='fa fa-trash-o'></i></button></a>
                        </td>
                    </tr>
                    <!-- bagian akhir (penutup) while -->
                    <?php endwhile; ?>
                </tbody>
            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
										
                </div>
            </div>
        </div>
        
</body>

<script>
       
    // fungsi edit komentar
    $('.btn-edit').on('click',function(){

        var id_komentar = $(this).attr("id_komentar");
    
        $.ajax({
            url: 'komentar/edit.php',
            method: 'post',
            data: {id_komentar:id_komentar},
            success:function(data){
                $('#tampil_data').html(data);  
                document.getElementById("judul").innerHTML='Edit komentar #'+id_komentar;
            }
        });
        // Membuka modal
        $('#modal').modal('show');
    });




    // fungsi hapus komentar
    $('.btn-hapus').on('click',function(){

        var id_komentar = $(this).attr("id_komentar");

        konfirmasi=confirm("Yakin ingin menghapus?")

        if (konfirmasi){
            $.ajax({
                url: 'komentar/hapus.php',
                method: 'post',
                data: {id_komentar:id_komentar},
                success:function(data){
                    window.location.href = 'index.php?halaman=komentar&hapus=berhasil';
                }
            });
        }
});

</script>

								</html>
								<?php
								include ('footer.php');
	  }
								?>