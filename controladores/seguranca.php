<?php

$bin = new Bin();
$url = $bin::$endpoint;
$response = $bin::get($url."Dados/dados.php", ['token'=>$TOKEN]);

$dados = (array) json_decode($response);
$dadosUsuario = (array) json_decode($dados['payload']);


$res = $bin::get($url."Seguranca/historicopalavrapasse.php", ['token'=>$TOKEN]);

$dadosSeg = (array) json_decode($res);
$seguranca = (array) json_decode($dadosSeg['payload']);

function historicoPalavraPasse($seguranca){
    date_default_timezone_set("Africa/Luanda");
    $res ='';
    foreach($seguranca as $dados){
        $dado = (array) $dados;
        
        $res .='<li>'.date("d-m-Y H:i:s A",$dado['quando']).'</li>';
    }

    return $res;
}