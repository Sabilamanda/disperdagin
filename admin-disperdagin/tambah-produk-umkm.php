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
											
                                                <form name="save-produk" class="form-horizontal style-form" method="post" action="save-produk-umkm.php" enctype="multipart/form-data" >
							  
									 <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                                <label class="login2 pull-right pull-right-pro">Nama Usaha</label>
                                                            </div>
                                                            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
															<select name="nama_produk" class="form-control">
															<option value ="">- Silahkan Pilih -</option>
                                                            <option value="Britania Kuliner">Britania Kuliner</option>
															<option value="Tauty Cake">Tauty Cake</option>													
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
															<select name="kategori_produk" class="form-control">
															<option value ="">- Silahkan Pilih -</option>
                                                            <option value="Minuman Kemasan">Minuman Kemasan</option>
															<option value="Makanan Kemasan">Makanan Kemasan</option>
                                                            <option value="Kue Basah">Kue Basah</option>	
                                                            <option value="kue Kering">Kue Kering</option>
                                                            <option value="Dessert">Dessert</option>
                                                            <option value="Frozen Food">Frozen Food</option>
                                                            <option value="Bahan Herbal">Bahan Herbal</option>
                                                            <option value="Olahan Ikan">Olahan Ikan</option>
                                                            <option value="Makanan Pelengkap">Makanan Pelengkap</option>
                                                            														
                                                        </select>
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
					echo "<a href=produk-umkm.php>
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