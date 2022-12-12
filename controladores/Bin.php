<?php

class Bin{

    static $endpoint = "http://apiconta.binga.ao/";

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
    
    static function get($url, $opt=[]){
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

    static function quando($quando){
        date_default_timezone_set("Africa/Luanda");
        return date("d-m-Y H:i:s A",$quando);
    }
    
}



