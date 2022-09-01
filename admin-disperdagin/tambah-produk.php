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
      }else
      ?>


<?php
include ('header.php');
?>       
	<html>
<body>
<title> Halaman Tambah Produk </title> 


        <!-- Single pro tab start-->
        <div class="single-product-tab-area mg-t-15 mg-b-30">
            <div class="container-fluid">
                <div class="row">
				
                     <div class="x-editable-area mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    
					<div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline12-list">
                            <div class="sparkline12-hd">
                                <div class="main-sparkline12-hd">
                                    <h1>TAMBAH DATA PRODUK</h1>
                                </div>
                            </div>
                            <div class="sparkline12-graph">
                                <div class="basic-login-form-ad">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="all-form-element-inner">
											
                                                <form name="save-produk" class="form-horizontal style-form" method="post" action="save-produk.php" enctype="multipart/form-data" >
							  
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Nama Usaha</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<select name="nama_produk" class="form-control">
															<option value ="">- Silahkan Pilih -</option>
                                                            <option value="Agustine Embroidery">Agustine Embroidery</option>
															<option value="Adjam dan Kaligrafi">Adjam dan Kaligrafi</option>
															<option value="Box Unik">Box Unik</option>
															<option value="Lesung Kramik">Lesung Kramik</option>
															<option value="CV. Mitra Technical">CV. Mitra Technical</option>
															<option value="Khabeesana Craft">Khabeesana Craft</option>
															<option value="Bogor Kreatif">Bogor Kreatif</option>
															<option value="Bogor Woodcraft">Bogor Woodcraft</option>
															<option value="Greenbelle">Greenbelle</option>
															<option value="Dini Design">Dini Design</option>
															<option value="GIE Shop">GIE Shop</option>
															<option value="Mynoi Gallery">Mynoi Gallery</option>
															<option value="CV. Mones Flush">CV. Mones Flush</option>
															<option value="KNH Collection">KNH Collection</option>
															<option value="CV. Omacha Toys">CV. Omacha Toys</option>
															<option value="Nyunyu Micu Handmade">Nyunyu Micu Handmade</option>
															<option value="Lista Sheephouse">Lista Sheephouse</option>
															<option value="Wisnu Toys">Wisnu Toys</option>
															<option value="Twist Rope">Twist Rope</option>
															<option value="Tyas Alifa Decoration (Mozaik Cermin)">Tyas Alifa Decoration (Mozaik Cermin)</option>
															<option value="Talitha Art">Talitha Art</option>
															<option value="Paneupaan Kujang Pajajaran">Paneupaan Kujang Pajajaran</option>
															<option value="Reisya Flanel">Reisya Flanel</option>
															<option value="AFW Knife">AFW Knife</option>
															<option value="Djallal Creative">Djallal Creative</option>
															<option value="Rumah Umi 75">Rumah Umi 75</option>
															<option value="Salam Rancage">Salam Rancage</option>
															<option value="Jumpa Production">Jumpa Production</option>
															<option value="Galeri Odelle">Galeri Odelle</option>
															<option value="Kandang Mainan">Kandang Mainan</option>
															<option value="My Simple Decou">My Simple Decou</option>
															<option value="My Zhee">My Zhee</option>
															<option value="MQ Bamboo">MQ Bamboo</option>
															<option value="Kin n Ken">Kin n Ken</option>
															<option value="Himmah Aneka Perca">Himmah Aneka Perca</option>
															<option value="CV. Omera Shazfa Senada">CV. Omera Shazfa Senada</option>
															<option value="Kresna Handyicraft">Kresna Handyicraft</option>
															<option value="Cabs Pocket">Cabs Pocket</option>
															<option value="UNCHAL oleh-oleh khas Bogor">UNCHAL oleh-oleh khas Bogor</option>
															<option value="House Of Thalita">House Of Thalita</option>
															<option value="ITANDO & GAYANIK">ITANDO & GAYANIK</option>
															<option value="Simple 8 Corner">Simple 8 Corner</option>
															<option value="Ramiza Boutique">Ramiza Boutique</option>
															<option value="Navisya Collection">Navisya Collection</option>
															<option value="Niel Design">Niel Design</option>
															<option value="Aitha Collection">Aitha Collection</option>
															<option value="Valerie">Valerie</option>
															<option value="Zola Leather">Zola Leather</option>
															<option value="Pepari Leather">Pepari Leather</option>
															<option value="Ginding Leather">Ginding Leather</option>
															<option value="Adrie Basuki">Adrie Basuki</option>
															<option value="BIA">BIA</option>
															<option value="Batik Handayani Geulis">Batik Handayani Geulis</option>
															<option value="Batik Tradisiku">Batik Tradisiku</option>
															<option value="Batik Bogor TegallegaPaniisan">Batik Bogor TegallegaPaniisan</option>
															<option value="Batik Bogor Pancawati">Batik Bogor Pancawati</option>
															<option value="Batik Bogor Melinda">Batik Bogor Melinda</option>
															<option value="Batik Bogor Bumiku">Batik Bogor Bumiku</option>
															<option value="IRD Batik dan Fashion">IRD Batik dan Fashion</option>
															<option value="Batik Melangit">Batik Melangit</option>
															<option value="Gazi Seri">Gazi Seri</option>
															<option value="Dgawan co">Dgawan co</option>
															<option value="Nu Taly">Nu Taly</option>
															<option value="Aseupan Daun">Aseupan Daun</option>
															<option value="FridAulia Indonesia">FridAulia Indonesia</option>
															<option value="Loji Craft">Loji Craft</option>
															<option value="Desco">Desco</option>
															<option value="Tri Crochet">Tri Crochet</option>
															<option value="Kalong Leather Garment">Kalong Leather Garment</option>														
                                                        </select>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Kategori</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" class="form-control" name="kategori"  required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Alamat</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="text" id="form-field-1" class="form-control" name="alamat"  required/>
                                                            </div>
                                                        </div>
                                     </div>														  
									 
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Foto Produk</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<input type="file" id="form-field-1" class="form-control" name="gmbr" required/>
                                                            </div>
                                                        </div>
                                     </div>
									 
	
							   <div class="form-group">
                              <div class="col-sm-10">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  <input type="submit" name="tambah" value="Tambah" class="btn btn-custon-two btn-danger" required>
								  <input type="reset" name="reset"value="Reset" class="btn btn-custon-two btn-danger">
								   <?php
					echo "<a href=produk.php>
					<button type='button' class='btn btn-custon-two btn-danger'>Back</button>
				</a> <br><br><br>";
				?>
                              </div>
							  </div>
							  
	  </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
					
                </div>
            </div>
        </div>
											
                </div>
            </div>
        </div>
       </body>
			</html>
			<?php
			include ('footer.php')
			?>