<?php 
require 'functions.php';

if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

// pagination
// konfigurasi
$jumlah_data_per_halaman = 10;
$jumlah_data = count(query("SELECT * FROM arsip_dokumen"));
$jumlah_halaman = ceil($jumlah_data / $jumlah_data_per_halaman);
$halaman_aktif = (isset($_GET['halaman'])) ? $_GET['halaman'] : 1;
$awal_data = ($jumlah_data_per_halaman * $halaman_aktif) - $jumlah_data_per_halaman; 

$isi = query("SELECT * FROM arsip_dokumen JOIN kode_arsip ON arsip_dokumen.kode_arsip = kode_arsip.kode_arsip LIMIT $awal_data, $jumlah_data_per_halaman");  
 
// tombol cari di klik
if (isset($_POST['cari_kode_box'])) {
	$keyword = $_POST['keyword'];
	$isi = cariKodeBox($keyword);
}

if (isset($_POST['cari_kode_ordner'])) {
	$keyword = $_POST['keyword'];
	$isi = cariKodeOrdner($keyword);
}

if (isset($_POST['cari_kode_arsip'])) {
	$keyword = $_POST['keyword'];
	$isi = cariKodeArsip($keyword);
}

if (isset($_POST['cari_kegiatan'])) {
	$keyword = $_POST['keyword'];
	$isi = cariKegiatan($keyword);
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
    <title>Halaman Utama</title>
  </head>
  <body class="bg">
<?php include 'include/navbar.php'; ?>

<section id="bidang" class="bidang">
	<div class="container-fluid">
		<div class="row marquee justify-content-center">
			<div class="col-md-6 mt-2 mb-3">
	          <marquee scrollamount="10" loop="infinite" direction="left" class="nav-link text-white p-2 bg-info rounded text-center"><h4><?= salam(); ?>, <?= ucfirst($_SESSION['nama']); ?></h4></marquee>
			</div>
		</div>
		<div class="row h3">
			<div class="col">
				<h3 class="bg-supergraphicss p-2 text-white text-center rounded">Dashboard</h3>
			</div>
		</div>
		<div class="row justify-content-center menu">
			<div class="col-md-6 mt-3 mb-2">
				<form class="form-inline" method="post">
				    <input for="colFormLabel" class="form-control mr-sm-2" type="text" autocomplete="off" placeholder="Cari" aria-label="Search" name="keyword">
				   	<div class="dropdown">
					  <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    Cari berdasarkan
					    <img src="img/baseline_search_white_18dp.png">
					  </button>
					  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					    <button class="dropdown-item" name="cari_kode_box" type="submit">Kode Box</button>
					    <button class="dropdown-item" name="cari_kode_ordner" type="submit">Kode Ordner</button>
					    <button class="dropdown-item" name="cari_kode_arsip" type="submit">Kode Arsip</button>
					    <button class="dropdown-item" name="cari_kegiatan" type="submit">kegiatan</button>
					  </div>
					</div>
				</form>
			</div>
			<div class="col-md-6 mt-3 mb-2">
				<button class="btn btn-danger" onclick="window.print()">PDF</button>
			</div>
		</div>
		<div class="row pagination">
			<!-- pagination -->
			<div class="col-md-12">
				<nav aria-label="Page navigation example">
				  <ul class="pagination pagination-md">
				    <li class="page-item">
				    <?php if($halaman_aktif > 1): ?>
				      <a class="page-link" href="?halaman=<?= $halaman_aktif - 1; ?>" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    <?php endif; ?>
				    </li>
				    <?php for ($i=1; $i <= $jumlah_halaman ; $i++) : ?>
					<?php if($i == $halaman_aktif) : ?>
				    <li class="page-item"><a class="rounded page-link bg-primary text-white" href="?halaman=<?= $i; ?>"><?= $i; ?></a></li>
				    <?php else : ?>
				    <li class="page-item"><a class="page-link" href="?halaman=<?= $i; ?>"><?= $i; ?></a></li>
					 <?php endif; ?>
					<?php endfor; ?>
				    <li class="page-item">
					<?php if($halaman_aktif < $jumlah_halaman): ?>
				      <a class="page-link" href="?halaman=<?= $halaman_aktif + 1; ?>" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				      <?php endif; ?>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table rules="all" border="2" cellpadding="10" cellspacing="0" class="table bg-white table-bordered table-hover table-primary shadow-box">
					<tr class="bg-primary text-white text-center">
						<th>No.</th>
						<th>Kode Rak</th>
						<th>Kode Box</th>
						<th>Kode Ordner</th>
						<th>Kode Arsip</th>
						<th>No Akun</th>
						<th>Bidang</th>
						<th>Sub Bidang</th>
						<th>Kegiatan</th>
						<th>Tahun</th>
						<th>Status Arsip</th>
						<th class="aksi">Aksi</th>
					</tr>
			
					<?php $i = 1; ?>
					<?php foreach ($isi as $row) : ?>
					<tr class="text-center">
						<td><?= $i; ?></td>
						<td><?= $row["kode_rak"]; ?></td>
						<td><?= $row["kode_box"]; ?></td>
						<td><?= $row["kode_ordner"]; ?></td>
						<td>
							<button type="button" class="kode_arsip btn btn-white border bordered-primary" data-toggle="popover" title="<?= $row["kode_arsip"]; ?>" data-content="<?= $row['deskripsi_arsip']; ?>"><?= $row["kode_arsip"]; ?></button>
						</td>
						
						<td><?= $row["no_akun"]; ?></td>
							<td class="text-center text-justify"><?= ucwords($row["bidang"]); ?></td>
							<td class="text-center text-justify"><?= ucwords($row["sub_bidang"]); ?></td>
						<td class="text-center text-justify"><?= ucfirst($row["kegiatan"]); ?></td>
						<td><?= $row["tahun"]; ?></td>
						<td><?= $row["status_arsip"]; ?></td>
						<td class="aksi">
							<a href="ubah.php?id=<?= $row['id_arsip_dokumen']; ?>" onclick="return confirm('Apakah Anda Ingin Mengubah Data ?');" class="m-1 btn btn-warning text-center text-white">
								<img src="img/baseline_edit_white_18dp.png">
							</a>
							<a href="hapus.php?id=<?= $row['id_arsip_dokumen']; ?>" onclick="return confirm('Apakah Anda Ingin Menghapus Data ?');" class="m-1 btn btn-danger text-center">
								<img src="img/baseline_delete_white_18dp.png">
							</a>
						</td>
					</tr>
					<?php $i++; ?>
					<?php endforeach; ?>		
				</table>
			</div>
		</div>
		<div class="row pagination">
			<!-- pagination -->
			<div class="col-md-12">
				<nav aria-label="Page navigation example">
				  <ul class="pagination pagination-md">
				    <li class="page-item">
				    <?php if($halaman_aktif > 1): ?>
				      <a class="page-link" href="?halaman=<?= $halaman_aktif - 1; ?>" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    <?php endif; ?>
				    </li>
				    <?php for ($i=1; $i <= $jumlah_halaman ; $i++) : ?>
					<?php if($i == $halaman_aktif) : ?>
				    <li class="page-item"><a class="rounded page-link bg-primary text-white" href="?halaman=<?= $i; ?>"><?= $i; ?></a></li>
				    <?php else : ?>
				    <li class="page-item"><a class="page-link" href="?halaman=<?= $i; ?>"><?= $i; ?></a></li>
					 <?php endif; ?>
					<?php endfor; ?>
				    <li class="page-item">
					<?php if($halaman_aktif < $jumlah_halaman): ?>
				      <a class="page-link" href="?halaman=<?= $halaman_aktif + 1; ?>" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				      <?php endif; ?>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
</section>
<div class="footer">
	COPYRIGHT &copy; <?= date('Y'); ?> BALAI BESAR TEKNOLOGI KONVERSI ENERGI
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="vendor/jquery-3.3.1.slim.min.js"></script>
    <script src="vendor/popper.min.js"></script>
    <script src="vendor/bootstrap.min.js"></script>
    <script>
    	$(function () {
		  $('[data-toggle="popover"]').popover()
		})
    	
    </script>
  </body>
</html>
