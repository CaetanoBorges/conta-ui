<?php

$bin = new Bin();
$url = $bin::$endpoint;

$response = $bin::get($url."dados.php", ['token'=>$TOKEN]);

$dados = (array) json_decode($response);
$dadosUsuario = (array) json_decode($dados['payload']);