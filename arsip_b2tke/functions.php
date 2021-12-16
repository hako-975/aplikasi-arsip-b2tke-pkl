<?php
session_start();
// koneksi ke database
$koneksi = mysqli_connect("localhost", "root", "" , "arsip_b2tke") or die;

function query($query){
	global $koneksi;
	$result = mysqli_query($koneksi, $query);
	$rows = [];
	while ($row = mysqli_fetch_assoc($result)) {
		$rows[] = $row;
	}
	return $rows;
}

function tambah($data){
	global $koneksi;
	$kode_rak = htmlspecialchars($data['kode_rak']);
	$kode_box = htmlspecialchars($data['kode_box']);
	$kode_ordner = htmlspecialchars($data['kode_ordner']);
	$kode_arsip = htmlspecialchars($data['kode_arsip']);
	$no_akun = htmlspecialchars($data['no_akun']);
	$bidang = htmlspecialchars($data['bidang']);
	$sub_bidang = htmlspecialchars($data['sub_bidang']);
	$kegiatan = htmlspecialchars($data['kegiatan']);
	$tahun = htmlspecialchars($data['tahun']);
	$status_arsip = htmlspecialchars($data['status_arsip']);

	// query insert data
	$query = "INSERT INTO arsip_dokumen (kode_rak, kode_box, kode_ordner, kode_arsip, no_akun, bidang, sub_bidang, kegiatan, tahun, status_arsip) 
		VALUES ('$kode_rak', '$kode_box', '$kode_ordner', '$kode_arsip', '$no_akun', '$bidang', '$sub_bidang', '$kegiatan', '$tahun', '$status_arsip');
			";
	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}

function tambahBidang($data){
	global $koneksi;
	$bidang = htmlspecialchars($data['bidang']);
	$sub_bidang = htmlspecialchars($data['sub_bidang']);
	
	// query insert data
	$query = "INSERT INTO bidang (bidang, sub_bidang) 
		VALUES ('$bidang', '$sub_bidang');
			";
	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}

function tambahKodeArsip($data){
	global $koneksi;
	$kode_arsip = htmlspecialchars($data['kode_arsip']);
	$deskripsi_arsip = htmlspecialchars($data['deskripsi_arsip']);
	
	// query insert data
	$query = "INSERT INTO kode_arsip (kode_arsip, deskripsi_arsip) 
		VALUES ('$kode_arsip', '$deskripsi_arsip');
			";
	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}

function tambahAkun($data){
	global $koneksi;
	$username = strtolower(stripcslashes($data['username']));
	$password = mysqli_real_escape_string($koneksi, $data['password']);
	$password2 = mysqli_real_escape_string($koneksi, $data['password2']);
	$nama = htmlspecialchars($data['nama']);
	$nip = htmlspecialchars($data['nip']);
	$akses = htmlspecialchars($data['akses']);

	// cek username sudah ada atau belum
	$result = mysqli_query($koneksi, "SELECT username FROM user WHERE username = '$username'");

	if (mysqli_fetch_assoc($result)) {
		echo "<script>
				alert('username sudah terdaftar !');
			</script>";
		return false;
	}

	// cek konfirmasi password
	if ($password !== $password2) {
	 	echo "<script>
				alert('konfirmasi password tidak sesuai !');
			</script>";
		return false;
	}

	// enkripsi password
	$password = password_hash($password, PASSWORD_DEFAULT);

	
	// query insert data
	$query = "INSERT INTO user (username, password, nama, nip, akses) 
		VALUES ('$username', '$password', '$nama', '$nip', '$akses');
			";
	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}



function hapus($id){
	global $koneksi;
	mysqli_query($koneksi, "DELETE FROM arsip_dokumen WHERE id_arsip_dokumen = $id");
	
	return mysqli_affected_rows($koneksi); 
}

function hapusKodeArsip($id){
	global $koneksi;
	mysqli_query($koneksi, "DELETE FROM kode_arsip WHERE id_kode_arsip = $id");
	
	return mysqli_affected_rows($koneksi); 
}

function hapusBidang($id){
	global $koneksi;
	mysqli_query($koneksi, "DELETE FROM bidang WHERE id_bidang = $id");
	
	return mysqli_affected_rows($koneksi); 
}

function hapusAkun($id){
	global $koneksi;
	mysqli_query($koneksi, "DELETE FROM user WHERE id_user = $id");
	
	return mysqli_affected_rows($koneksi); 
}

function ubah($data){
	global $koneksi;
	$id = $data['id_arsip_dokumen'];
	$kode_rak = htmlspecialchars($data['kode_rak']);
	$kode_box = htmlspecialchars($data['kode_box']);
	$kode_ordner = htmlspecialchars($data['kode_ordner']);
	$kode_arsip = htmlspecialchars($data['kode_arsip']);
	$no_akun = htmlspecialchars($data['no_akun']);
	$bidang = htmlspecialchars($data['bidang']);
	$kegiatan = htmlspecialchars($data['kegiatan']);
	$tahun = htmlspecialchars($data['tahun']);
	$status_arsip = htmlspecialchars($data['status_arsip']);

	// query insert data
	$query = "UPDATE arsip_dokumen
				SET
				kode_rak = '$kode_rak',
				kode_box = '$kode_box',
				kode_ordner = '$kode_ordner',
				kode_arsip = '$kode_arsip', 
				no_akun = '$no_akun', 
				bidang = '$bidang', 
				kegiatan = '$kegiatan', 
				tahun = '$tahun',
				status_arsip = '$status_arsip'
				WHERE id_arsip_dokumen = '$id' 
			";
	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}

function ubahKodeArsip($data){
	global $koneksi;
	$id = $data['id_kode_arsip'];
	$kode_arsip = htmlspecialchars($data['kode_arsip']);
	$deskripsi_arsip = htmlspecialchars($data['deskripsi_arsip']);

	// query insert data
	$query = "UPDATE kode_arsip
				SET 
				kode_arsip = '$kode_arsip',
				deskripsi_arsip = '$deskripsi_arsip'
				WHERE id_kode_arsip = '$id' 
			";
	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}

function ubahBidang($data){
	global $koneksi;
	$id = $data['id_bidang'];
	$bidang = htmlspecialchars($data['bidang']);
	$sub_bidang = htmlspecialchars($data['sub_bidang']);

	// query insert data
	$query = "UPDATE bidang
				SET 
				bidang = '$bidang',
				sub_bidang = '$sub_bidang'
				WHERE id_bidang = '$id' 
			";
	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}

function ubahAkun($data){
	global $koneksi;
	$id = $data['id'];
	$username = strtolower(stripcslashes($data['username']));
	$password = mysqli_real_escape_string($koneksi, $data['password']);
	$password2 = mysqli_real_escape_string($koneksi, $data['password2']);
	$nama = htmlspecialchars($data['nama']);
	$nip = htmlspecialchars($data['nip']);
	$akses = htmlspecialchars($data['akses']);

	if ($password !== $password2) {
		echo "<script>
			alert('konfirmasi tidak sesuai');
		</script>";
		return false;
	}
	$password = password_hash($password, PASSWORD_DEFAULT);
	// query insert data
	$query = "UPDATE user
				SET
				username = '$username',
				password = '$password',
				nama = '$nama',
				nip = '$nip', 
				akses = '$akses'
				WHERE id_user = '$id' 
			";
	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}


function cariKodeBox($keyword){
	$query = "SELECT * FROM arsip_dokumen JOIN kode_arsip ON arsip_dokumen.kode_arsip = kode_arsip.kode_arsip WHERE kode_box LIKE '%$keyword%'";
	return query($query);
}

function cariKodeOrdner($keyword){
	$query = "SELECT * FROM arsip_dokumen JOIN kode_arsip ON arsip_dokumen.kode_arsip = kode_arsip.kode_arsip WHERE kode_ordner LIKE '%$keyword%'";
	return query($query);
}

function cariKodeArsip($keyword){
	$query = "SELECT * FROM arsip_dokumen JOIN kode_arsip ON arsip_dokumen.kode_arsip = kode_arsip.kode_arsip WHERE arsip_dokumen.kode_arsip LIKE '%$keyword%'";
	return query($query);
}

function cariKegiatan($keyword){
	$query = "SELECT * FROM arsip_dokumen JOIN kode_arsip ON arsip_dokumen.kode_arsip = kode_arsip.kode_arsip WHERE kegiatan LIKE '%$keyword%'";
	return query($query);
}

function cariKodeArsip1($keyword){
	$query = "SELECT * FROM kode_arsip WHERE kode_arsip LIKE '%$keyword%'";
	return query($query);
}

function cariDeskripsiArsip1($keyword){
	$query = "SELECT * FROM kode_arsip WHERE deskripsi_arsip LIKE '%$keyword%'";
	return query($query);
}

function cariBidang1($keyword){
	$query = "SELECT * FROM bidang WHERE bidang LIKE '%$keyword%'";
	return query($query);
}

function cariSubBidang1($keyword){
	$query = "SELECT * FROM bidang WHERE sub_bidang LIKE '%$keyword%'";
	return query($query);
}

function cariAkun($keyword){
	$query = "SELECT * FROM user WHERE 
		username LIKE '%$keyword%' OR
		password LIKE '%$keyword%' OR
		nama LIKE '%$keyword%' OR
		nip LIKE '%$keyword%' OR
		akses LIKE '%$keyword%'
		";
	return query($query);
}

function salam() {
	date_default_timezone_set("Asia/Jakarta");

	$b = time();
	$hour = date("G",$b);

	if ($hour>=0 && $hour<=11)
	{
	echo "Selamat Pagi";
	}
	elseif ($hour >=11 && $hour<=15)
	{
	echo "Selamat Siang ";
	}
	elseif ($hour >=15 && $hour<=18)
	{
	echo "Selamat Sore ";
	}

	elseif ($hour >=18 && $hour<24)
	{
	echo "Selamat Malam ";
	}

}


 ?>
