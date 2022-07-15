<?php
// Set header type konten.
header("Content-Type: application/json; charset=UTF-8");

require 'functions.php';

// Deklarasi variable keyword sub_bidang.
$sub_bidang = $_GET["query"];

// Query ke database.
$query  = $koneksi->query("SELECT * FROM bidang WHERE sub_bidang LIKE '%$sub_bidang%' ORDER BY sub_bidang DESC");
$result = $query->fetch_all(MYSQLI_ASSOC);

// Format bentuk data untuk autocomplete.
foreach($result as $data) {
    $output['suggestions'][] = [
        'value' => $data['sub_bidang'],
        'sub_bidang'  => $data['sub_bidang']
    ];
}

if (! empty($output)) {
    // Encode ke format JSON.
    echo json_encode($output);
}else{
	$output['suggestions'] = '';
	echo json_encode($output);
}