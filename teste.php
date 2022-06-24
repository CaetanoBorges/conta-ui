<?php

$var = ["chaveum" => "valor1","chavedois" => "valor2","chavetres" => "valor3"];
$qtd = count($var);
$control = 1;
$opcoes="";
foreach($var as $k => $v){
    $juncao = "&";
    if($control == $qtd){
        $juncao = "";
    }
    $opcoes.=$k."=".$v.$juncao;
    ++$control;
}
echo $opcoes;
