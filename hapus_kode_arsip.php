<?php 
require 'functions.php';

if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

$id = $_GET['id'];

if (hapusKodeArsip($id) > 0) {
	echo "
			<script>
				alert('data berhasil dihapus!');
				document.location.href = 'kode_arsip.php';
			</script>
		";
	}else{
		echo "<script>
				alert('data gagal dihapus!');
				document.location.href = 'kode_arsip.php';
			</script>
		";
}

 ?>