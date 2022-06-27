<?php
$bin = new Bin();
$url = $bin::$endpoint;

$response = $bin::get($url."Dados/dados.php", ['token'=>$TOKEN]);

$dados = (array) json_decode($response);
$dadosUsuario = (array) json_decode($dados['payload']);

function igenero($genero) {

    $TEMPLATE = `
        
    `;
    if ($genero == "m") {
        $TEMPLATE = '
        <select name="" class="genero outline-none" id="igenero">
        <option value="m">Masculino</option>
        <option value="f">Feminino</option>
        </select>
    ';
    } else {
        $TEMPLATE = '
        <select name="" class="genero outline-none" id="igenero">
        <option value="f">Feminino</option>
        <option value="m">Masculino</option>
        </select>
    ';

    }

    return $TEMPLATE;

}

function mes($mes) {

    $k = $mes - 1;
    $meses = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"];
    
    if ($meses[$k]) {
        $mes = $meses[$k];
        $kapa = $k + 1;
        
        $TEMPLATE = '<select name="" class="mes outline-none" id="mes"><option value="'.$kapa.'">'.$mes.'</option><option value="1">Janeiro</option>
            <option value="2">Fevereiro</option><option value="3">Março</option>
            <option value="4">Abril</option><option value="5">Maio</option><option value="6">Junho</option><option value="7">Julho</option>
            <option value="8">Agosto</option>
            <option value="9">Setembro</option>
            <option value="10">Outubro</option>
            <option value="11">Novembro</option>
            <option value="12">Dezembro</option>
        </select>';
        return $TEMPLATE;
    }
    
}


function localizacao($prov, $mun, $bairro, $territorios) {
    if ($prov) {
        $keys = array_keys($territorios);
        $provincias = '';
        $municipios = '';
        foreach ($keys as $k) {
            $provincias .= '<option value="' . $k . '">' . $k . '</option>';
        }
        foreach($territorios[$prov]['municipios'] as $k) {
            $municipios .= '<option value="' . $k . '">' . $k . '</option>';
        }
        $capital = $territorios[$prov]['capital'];
        $municipio = '';
        if ($mun) {
            $municipio = $mun;
        }

        $TEMPLATE ='
            <div class="limpa" ></div>
            <select name="" class="genero outline-none rv-largura-100" id="iprovincia">
                <option value="'.$prov.'">'.$prov.'</option>
                '.$provincias.'
            </select>
            <div class="limpa" ></div>
            <div class="municipio-container">
                <select name="" class="genero outline-none rv-largura-100" id="imunicipio">
                    <option value="'.$municipio.'">'.$municipio.'</option>
                    <option value="'.$capital.'">'.$capital.'</option>
                    '.$municipios.'
                </select>
            </div>
            <input type="text" class="rv-btn input-entrar" placeholder="Bairro e rua" value="'.$bairro.'" id="ibairro">
        ';
        return $TEMPLATE;

    } else {
        $keys = array_keys($territorios);
        $provincias = '';
        $municipios = '';
        foreach ($keys as $k) {
            
            $provincias .= '<option value="' . $k . '">' . $k . '</option>';
        }



        $TEMPLATE = '
            <div class="limpa" ></div>
            <select name="" class="genero outline-none rv-largura-100" id="iprovincia">
                <option value="0">Seleciona uma provincia</option>
                '.$provincias.'
            </select>
            <div class="limpa" ></div>
            <div class="municipio-container">
                <select name="" class="genero outline-none rv-largura-100" id="imunicipio">
                    
                </select>
            </div>
            <input type="text" class="rv-btn input-entrar" placeholder="Bairro e rua" value="'.$bairro.'" id="ibairro">
        ';
        return $TEMPLATE;
    }
}

