<?php 
require 'functions.php';

if ( !isset($_SESSION["login"])) {
	header("Location: login.php");
}

$id = $_GET['id'];

$isi = query("SELECT * FROM bidang WHERE id_bidang = $id")[0];

if (isset($_POST['submit'])) {
	
	// cek apakah data berhasil diubah atau tidak
	if (ubahBidang($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil diubah!');
				document.location.href = 'index.php';
			</script>
		";
	}else{
		echo "<script>
				alert('data gagal diubah!');
				document.location.href = 'ubah_bidang.php';
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
	
    <title>Ubah Bidang</title>
  </head>
  <body class="bg">
  <?php include 'include/navbar.php'; ?>
	
	<section id="ubah_data" class="ubah_data">
		<div class="container">
			<div class="row mb-2">
				<div class="col text-white p-1 rounded bg-supergraphicss text-center">
					<h2>Ubah Bidang</h2>
				</div>
			</div>
			<div class="row">
				<div class="col bg-white rounded p-5 mb-2 shadow-box">
					<form action="" method="POST">
						<div class="row">
							<div class="col">
								<input type="hidden" name="id_bidang" value="<?= $isi['id_bidang']; ?>">
								<div class="form-group">
									<label for="bidang">Bidang : </label>
									<input type="text" name="bidang" class="form-control" required value="<?= $isi['bidang']; ?>">
								</div>
								<div class="form-group">
									<label for="sub_bidang">Sub Bidang : </label>
									<input type="text" name="sub_bidang" class="form-control" required value="<?= $isi['sub_bidang']; ?>">
								</div>			
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary mt-3" name="submit">Ubah Bidang 
							<img src="img/baseline_send_white_18dp.png"></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>



	
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