<?php

$bin = new Bin();
$url = $bin::$endpoint;

function registoDePagamentos($bin,$url,$TOKEN,$servico){
    
    $pagamentosResponse = $bin::post($url."Pagamentos/pagamentos.php", ['token'=>$TOKEN,'servico'=>$servico]);
    $pagamentos = (array) json_decode($pagamentosResponse);
    rsort($pagamentos['payload']);
    echo '<ul class="menu-dentro">';
    foreach($pagamentos['payload'] as $chave => $pagamento){
        $pagamento = (array) $pagamento;
        if(!$pagamento['confirmado']){
            echo '<li>'.$pagamento['tipo'].': '. Bin::quando($pagamento['quando']) .' <i class="rv-txt-cl-quatro">Pendente</i></li>';
        }else{
            echo '<li>'.$pagamento['tipo'].': '. Bin::quando($pagamento['quando']) .'<i class="rv-txt-cl-dois">Confirmado</i></li>';
        }
    }
    echo '</ul>';

}

