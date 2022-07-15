<?php 
require 'functions.php';

if (!isset($_SESSION["login"])) {
	header("Location: login.php");
	exit;
}

$id = $_GET['id'];

if (hapusAkun($id) > 0) {
	echo "
			<script>
				alert('data berhasil dihapus!');
				document.location.href = 'info_akun.php';
			</script>
		";
	}else{
		echo "<script>
				alert('data gagal dihapus!');
				document.location.href = 'info_akun.php';
			</script>
		";
}

 ?>