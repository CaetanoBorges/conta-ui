<?php
$bin = new Bin();
$url = $bin::$endpoint;

$response = $bin::get($url."dados.php", ['token'=>$TOKEN]);

print_r(json_decode($response));
