<?php 
require 'functions.php';

if ( !isset($_SESSION["login"])) {
	header("Location: login.php");
}

if (isset($_POST['submit'])) {
	
	// cek apakah data berhasil ditambahkan atau tidak
	if (tambah($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil ditambahkan!');
				document.location.href = 'index.php';
			</script>
		";
	}else{
		echo "<script>
				alert('data gagal ditambahkan!');
				document.location.href = 'input.php';
			</script>
		";
	}
}

 ?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="vendor/bootstrap.min.css">
	
	<!-- CSS -->
	<link rel="stylesheet" href="vendor/style.css">
	<link rel="shortcut icon" type="text/css" href="img/Logo_BPPT.png">
	
    <title>Tambah Data Arsip</title>
  </head>
  <body class="bg">
  <?php include 'include/navbar.php'; ?>
	
	<section id="tambah_data" class="tambah_data">
		<div class="container">
			<div class="row mb-2">
				<div class="col text-white p-1 rounded bg-supergraphicss text-center">
					<h2>Tambah Data Arsip</h2>
				</div>
			</div>
			<div class="row">
				<div class="col bg-white rounded p-5 mb-2 shadow-box">
					<form action="" method="POST">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label for="kode_rak">Kode Rak : </label>
									<input type="text" name="kode_rak" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="kode_box">Kode Box : </label>
									<input type="text" name="kode_box" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="kode_ordner">Kode Ordner : </label>
									<input type="text" name="kode_ordner" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="kode_arsip">Kode Arsip : </label>
									<input type="text" id="kode_arsip" name="kode_arsip" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="no_akun">No Akun : </label>
									<input type="number" name="no_akun" class="form-control" required autocomplete="onSelect">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<label for="bidang">Bidang : </label>
				            	   	<input type="text" id="bidang" name="bidang" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="sub_bidang">Sub Bidang : </label>
				            	   	<input type="text" id="sub_bidang" name="sub_bidang" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="kegiatan">Kegiatan : </label>
					                <input type="text" id="kegiatan" name="kegiatan" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="tahun">Tahun : </label>
					                <input type="number" min="2000" max="9999" id="tahun" name="tahun" class="form-control" required>
								</div>
								<div class="form-group">
									<label for="status_arsip">Status Arsip : </label>
					                <input type="text" id="status_arsip" name="status_arsip" class="form-control" required>
								</div>					
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary mt-3" name="submit">Tambah Data 
							<img src="img/baseline_send_white_18dp.png"></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>



	<div class="footer">
        COPYRIGHT &copy; <?= date('Y'); ?> BALAI BESAR TEKNOLOGI KONVERSI ENERGI
   	 </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="vendor/jquery-3.3.1.min.js"></script>
    <script src="vendor/jquery.autocomplete.min.js"></script>
    <script src="vendor/popper.min.js"></script>
    <script src="vendor/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            // Selector input yang akan menampilkan autocomplete.
            $( "#kode_arsip" ).autocomplete({
                serviceUrl: "suggestion.php",   // Kode php untuk prosesing data.
                dataType: "JSON",           // Tipe data JSON.
                onSelect: function (suggestion) {
                    $( "#kode_arsip" ).val("" + suggestion.kode_arsip);
                }
            });

            // Selector input yang akan menampilkan autocomplete.
            $( "#bidang" ).autocomplete({
                serviceUrl: "suggestion1.php",   // Kode php untuk prosesing data.
                dataType: "JSON",           // Tipe data JSON.
                onSelect: function (suggestion) {
                    $( "#bidang" ).val("" + suggestion.bidang);
                }
            });
            // Selector input yang akan menampilkan autocomplete.
            $( "#sub_bidang" ).autocomplete({
                serviceUrl: "suggestion2.php",   // Kode php untuk prosesing data.
                dataType: "JSON",           // Tipe data JSON.
                onSelect: function (suggestion) {
                    $( "#sub_bidang" ).val("" + suggestion.sub_bidang);
                }
            });
        });
    </script>
  </body>
</html>