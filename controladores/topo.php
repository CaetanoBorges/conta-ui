<?php 

$urlServicos = $bin::$endpoint;
$resServicos = $bin::get($urlServicos."servicos.php");

$arrayServicos = (array) json_decode($resServicos);

$servicos = (array) $arrayServicos['payload'];

?>