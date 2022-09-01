<?php
include "admin-disperdagin/koneksi.php";
if(isset($_GET['id_berita'])){
    $id=$_GET['id_berita'];
}
else {
    die ("Error. No ID Selected!");    
}
?>
<?php
	include ('header.php');
	?>
	<head>
	<style type="text/css">
10. body{ 
11.    padding: 10px 
12. }
13. .sosmed_inline img{
14.    display:inline;
15.    margin:2px;
16.    border-radius:4px;
17.    width:44px;
18.    opacity:1;
19.    cursor:pointer;
20. }
21. .sosmed_inline img:hover{
22.    opacity:0.8;
23.    transform:scale(1.1);
24. }
25. </style>
	</head>
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Detail Berita</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li><a href="berita.php">Berita</a></li>
            <li>Detail Berita</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Single Section ======= -->
   <?php
						$data = mysqli_query($koneksi,"select * from berita where id_berita='$id'");
						while($dt=mysqli_fetch_array($data)){
										
					?>
    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">

        <div class="row">

          <div class="col-lg-12 entries">

            <article class="entry entry-single">

              <div class="entry-img">			 
              </div>

              <h2 class="entry-title">
                <?=$dt['judul_berita'];?>
              </h2>
	
              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"> <i class="bi bi-tags"></i></i><a href="#"><?=$dt['kategori'];?></a></li>
                </ul>
              </div>
						<center><img src="admin-disperdagin/foto/berita/<?=$dt['foto'];?>" width="800px" height="600px" class="img-fluid"></center>
			  <br><center>
			  <p class="sosmed_inline">
				 <img src="assets/img/res/facebook.png" onclick="_fb();" alt="facebook" style="width:40px; height:40px">&nbsp;&nbsp;
				 <img src="assets/img/res/twitter.png" onclick="_twitter();" alt="twitter" style="width:40px; height:40px">&nbsp;&nbsp;
				 <img src="assets/img/res/whatapps.png" onclick="_whatapps();" alt="whatapps" style="width:40px; height:40px">&nbsp;&nbsp;
				 <img src="assets/img/res/gmail.png" onclick="_gmail();" alt="gmail" style="width:40px; height:40px">&nbsp;&nbsp;
			  </p></center>
			  <script>
 var title = "Sosial media sharing button";
 var deskripsi= "Membagi konten web via sosial media";
 var currentLocation = window.location;
 var top = (screen.height - 570) / 2;
 var left = (screen.width - 570) / 2;
 var params = "menubar=no,toolbar=no,status=no,width=570,height=570,top=" + top + ",left=" + left;
 console.log(encodeURI(title+deskripsi));
    function _fb(){
     var url="https://web.facebook.com/sharer.php?u=" + encodeURI(currentLocation);
      window.open(url,'NewWindow',params);
    }
    function _twitter(){
      var url="https://twitter.com/intent/tweet?url=" + encodeURI(currentLocation) + "&text="+encodeURI(deskripsi);
      window.open(url,'NewWindow',params);
      
    }
    function _whatapps(){
      var url="https://api.whatsapp.com/send?phone=&text=" + encodeURI(title +" "+deskripsi);
      window.open(url,'NewWindow',params);
    }
    function _gmail(){
      var url="https://mail.google.com/mail/?view=cm&to=&su=" + encodeURI(title) + "&body=" + encodeURI(currentLocation + deskripsi);
      window.open(url,'NewWindow',params);
    }
 </script>
              <div class="entry-content">
                <br><p align="justify">
                 <?= wordwrap($dt['isi'], 700, "<p>");?>
                 
                </p> 

              </div>

              <div class="entry-footer">
                
              </div>

            </article><!-- End blog entry -->
            </div><!-- End blog author bio -->
			<?php
                  if (isset($_GET['id_komentar'])) {
                    //Mengecek nilai variabel add yang telah di enskripsi dengan method md5()
                    if ($_GET['id_komentar']=='berhasil'){
                        echo"<div class='alert alert-success'>Komentar telah terkirim, menunggu persetujuan dari admin</div>";
                    }else {
                        echo"<div class='alert alert-danger'>Komentar gagal</div>";
                    }   
                }
            ?>
			<div class="row">
                <?php
                    include 'koneksi.php';
                    $sql="select * from komentar where id_berita=$id and status_komentar=1 order by id_komentar desc";
                    $hasil=mysqli_query($koneksi,$sql);
                    while ($komentar = mysqli_fetch_array($hasil)):
					?>
                <div class="col-sm-12">
                    <div class="caption">
                        <h5><?php echo $komentar['email'];?></h5>
                        <div class="row">
                            <div class="col-sm-1">
                                <img src="assets/img/user.png" width="50%" alt="Cinque Terre">
                            </div>
                            <div class="col-sm-11">
                                <?php echo $komentar['isi_komentar']; ?>
                            </div> 
                        </div>
                        <br><br>
                    </div>
                </div>
                <?php endwhile; ?>
            </div>
			<div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10">
		  <label><h4>Komentar Berita</h4></label>
              <hr width="15%">
            <form method="post" action="simpan-komentar.php"> 
              <div class="row">	
              <div class="col-lg-0 col-md-0">
						<input type="hidden" name="id_berita" value="<?php echo $dt['id_berita'];?>" class="form-control">
                        <input type="hidden" name="status_komentar" value="0" class="form-control">
						</div>		  
                <div class="col-md-6 form-group">
				<label>Nama:</label>
                  <input type="text" name="nama" class="form-control" id="nama" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
				<label>Email:</label>
                  <input type="email" class="form-control" name="email" id="email" required>
                </div>
              </div>            
              <div class="form-group mt-3">
			  <label>Komentar:</label>
                <textarea class="form-control" name="isi_komentar" rows="5" required></textarea>
              </div>
			  <br>
              <div class="form-group">
                 <input type="submit"  name="form_komentar" class="btn btn-custon-four btn-danger" value="Kirim Komentar">
              </div>
            </form>
          </div>

        </div>
		
		
		
            <!-- End blog comments -->

          </div><!-- End blog entries list -->

          <!-- End blog sidebar -->

        </div>

      </div>
    </section><!-- End Blog Single Section -->
<?php }?>
  </main><!-- End #main -->
  </body>

  </html>
								<?php
								include ('footer.php');
								?>