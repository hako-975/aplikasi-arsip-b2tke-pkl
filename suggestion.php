<?php
// Set header type konten.
header("Content-Type: application/json; charset=UTF-8");

require 'functions.php';

// Deklarasi variable keyword kode_arsip.
$kode_arsip = $_GET["query"];

// Query ke database.
$query  = $koneksi->query("SELECT * FROM kode_arsip WHERE kode_arsip LIKE '%$kode_arsip%' ORDER BY kode_arsip ASC");
$result = $query->fetch_all(MYSQLI_ASSOC);

// Format bentuk data untuk autocomplete.
foreach($result as $data) {
    $output['suggestions'][] = [
        'value' => $data['kode_arsip'],
        'kode_arsip'  => $data['kode_arsip']
    ];
}

if (! empty($output)) {
    // Encode ke format JSON.
    echo json_encode($output);
}else{
	$output['suggestions'] = '';
	echo json_encode($output);
}
