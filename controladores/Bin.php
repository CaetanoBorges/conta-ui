<?php

class Bin{

    static $endpoint = "http://127.0.0.1/binga/conta-api/Dados/";

    static function post($url, $opt){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query( $opt ) );
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $res = curl_exec($ch);
        curl_close($ch);
    
        return $res;
    
    }
    
    static function get($url, $opt){
        $qtd = count($opt);
        $control = 1;
        $variaveis="";
        foreach($opt as $k => $v){
            $juncao = "&";
            if($control == $qtd){
                $juncao = "";
            }
            $variaveis.=$k."=".$v.$juncao;
            ++$control;
        }
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,$url."?".$variaveis);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $res = curl_exec($ch);
        curl_close($ch);
        return $res;
    
    }
    
}



