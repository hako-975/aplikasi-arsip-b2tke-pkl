<?php 
require 'functions.php';



if (isset($_POST['submit'])) {
	
	// cek apakah data berhasil ditambahkan atau tidak
	if (tambahAkun($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil ditambahkan!');
				document.location.href = 'logout.php';
			</script>
		";
	}else{
		echo "<script>
				alert('data gagal ditambahkan!');
				document.location.href = 'tambah_akun.php';
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
	
    <title>Tambah Akun</title>
  </head>
  <body class="bg">
  <?php include 'include/navbar.php'; ?>

	<div class="container">
		<div class="row mb-2">
			<div class="col text-white p-1 rounded bg-supergraphicss text-center">
				<h2>Tambah Akun</h2>
			</div>
		</div>
		<div class="row">
			<div class="col bg-white rounded p-5 mb-2 shadow-box">
				<form action="" method="POST">
					<input type="hidden" name="id">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="username">Username : </label>
								<input type="text" name="username" class="form-control" required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="nama">Nama : </label>
								<input type="text" name="nama" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="password">Password : </label>
								<input type="password" name="password" class="form-control" required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="password2">Verifikasi  Password : </label>
								<input type="password" name="password2" class="form-control" required>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="nip">NIP : </label>
								<input type="number" name="nip" class="form-control" required>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="akses">Akses : </label>
								<select name="akses" id="akses" class="form-control">
									<option value="administrator">Administrator</option>
									<option value="pegawai">Pegawai</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary mt-4" name="submit">Tambah Akun 
						<img src="img/baseline_send_white_18dp.png"></button>
					</div>
				</form>
			</div>
		</div>
	</div>

		<!-- Optional JavaScript -->
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	    <script src="vendor/jquery-3.3.1.min.js"></script>
	    <script src="vendor/jquery.autocomplete.min.js"></script>
	    <script src="vendor/popper.min.js"></script>
	    <script src="vendor/bootstrap.min.js"></script>
	
	 <div class="footer">
        COPYRIGHT &copy; <?= date('Y'); ?> BALAI BESAR TEKNOLOGI KONVERSI ENERGI
   	 </div>
   	 
    </body>
</html>