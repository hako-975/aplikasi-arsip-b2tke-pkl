<?php
// Set header type konten.
header("Content-Type: application/json; charset=UTF-8");

require 'functions.php';

// Deklarasi variable keyword bidang.
$bidang = $_GET["query"];

// Query ke database.
$query  = $koneksi->query("SELECT * FROM bidang WHERE bidang LIKE '%$bidang%' ORDER BY bidang DESC");
$result = $query->fetch_all(MYSQLI_ASSOC);

// Format bentuk data untuk autocomplete.
foreach($result as $data) {
    $output['suggestions'][] = [
        'value' => $data['bidang'],
        'bidang'  => $data['bidang']
    ];
}

if (! empty($output)) {
    // Encode ke format JSON.
    echo json_encode($output);
}else{
	$output['suggestions'] = '';
	echo json_encode($output);
}