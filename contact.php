<?php
	include ('header.php');
	?>
	
<html>
<title>Dinkukmdagin</title>
<body>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Kontak</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Kontak</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
	<body>
      <!-- google maps -->
	  <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3081.094011576398!2d106.79733671397395!3d-6.569748966048515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69c5c68067dea5%3A0xd64009caade9d254!2sDinas%20Perindustrian%20dan%20Perdagangan%20Kota%20Bogor!5e1!3m2!1sid!2sid!4v1638286751898!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
  </body>
  
    

    <section id="contact" class="contact">
      <div class="container">

        <div class="row justify-content-center" data-aos="fade-up">

          <div class="col-lg-10">

            <div class="info-wrap">
              <div class="row">
                <div class="col-lg-4 info">
                  <i class="bi bi-geo-alt"></i>
                  <h4>Alamat Kantor:</h4>
                  <p>Jl. Dadali No.4, RT.03/RW.06, Tanah Sareal, Kec. Tanah<br>Sereal, Kota Bogor, Jawa Barat 16161 
				  <strong><p>(Sekretariat, Bidang Promija)</p></strong>
				  <br>
                  <p>Jl. Dadali II No.3, RT.01/RW.05, Tanah Sareal, Kec. Tanah<br>Sereal, Kota Bogor, Jawa Barat 16161 
				  <strong><p>(Bidang Koperasi, Bidang UMKM dan Bidang PPDNPKTN)</p></strong><br>
				  <p>Jl. Ciremai Ujung No.202, Kel. Bantar Jati Kec. Bogor Utara
				  <strong><p>(Bidang Industri)</p></strong><br>
				  <p>Jl. Raya Tajur No.52 Kota Bogor, Jawa Barat 
				  <strong><p>(UPTD Metrologi Legal)</p></strong>
                </div>
				

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  <i class="bi bi-envelope"></i>
                  <h4>Email:</h4>
                  <p>indagbogorkota04@gmail.com</p>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  <i class="bi bi-phone"></i>
                  <h4>No Telpon:</h4>
                  <p>0251-8338-788</p>
                </div>
              </div>
            </div>

          </div>

        </div>
		
        <div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10">
            <form method="post" action="simpan-komentarr.php"> 
			<label><h4>Kirim Saran dan Pengaduan</h4></label>
			<hr />
              <div class="row">
			  <div class="col-lg-0 col-md-0">
						<input type="hidden" name="id_komen" value="<?php echo $dt['id_komen'];?>" class="form-control">
						</div>
                <div class="col-md-6 form-group">
				<label>Nama Lengkap *</label>
                  <input type="text" name="nama_komen" class="form-control" id="nama_komen" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
				<label>Alamat Email *</label>
                  <input type="email" class="form-control" name="email_komen" id="email_komen" required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
				<label>Nomor Telpon *</label>
                  <input type="text" name="tlp" class="form-control" id="tlp" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
				<label>Pekerjaan *</label>
                  <input type="text" class="form-control" name="pekerjaan" id="pekerjaan" required>
                </div>
              </div>
              <div class="form-group mt-3">
			  <label>Pesan *</label>
                <textarea class="form-control" name="pesan" rows="5" placeholder="Masukan Pesan Anda" required></textarea>
              </div>
			  <br>
              <div class="form-group">
                 <input type="submit"  name="form_komentar" class="btn btn-primary" value="Kirim Komentar">
              </div>
              
            </form>
          </div>

        </div>

      </div>
    </section>
      
	<!-- ======= Our Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container">
        <div class="row">
		
		<div class="section-title text-center">
                        <h2>Sosial Media <strong>DINKUMDAGIN</strong></h2>
                        <p>Silahkan kunjungi Sosial Media kami jika ada Pertanyaan dan Pengaduan</p>
                    </div>
          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up">
              <div class="member-img">
                <img src="assets/img/tim/img-11.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href="https://www.instagram.com/dinas_kukmdagin_kotabogor/" target="_blank"><b>INSTAGRAM</b></a>
                </div>
              </div>
             
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="100">
              <div class="member-img">
                <img src="assets/img/tim/img-44.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href="https://wa.me/085817908343" target="_blank"><b>WHATSAPP</b></a>
                </div>
              </div>
      
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <div class="member-img">
                <img src="assets/img/tim/img-22.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href="https://web.facebook.com/Dinasperindustriandanperdagangankotabogor/?_rdc=1&_rdr" target="_blank"><b>FACEBOOK</b></a>
                </div>
              </div>
             
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <div class="member-img">
                <img src="assets/img/tim/imel.png" class="img-fluid" alt="">
                <div class="social">
                  <a href="mailto:@indagbogorkota04@gmail.com" target="_blank"><b>EMAIL</b></a>
                </div>
              </div>
             
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Our Team Section -->
	
  </main><!-- End #main -->

  </body>
								</html>
								<?php
								include ('footer.php');
								?>