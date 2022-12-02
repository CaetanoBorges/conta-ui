<!DOCTYPE html>
<?php include("_partes/token.php"); ?>
<?php include("controladores/Bin.php"); ?>
<?php include("controladores/seguranca.php"); ?>
<html lang="pt">

<head>
    <link rel="stylesheet" href="_css/passtrength.css">
    <?php include("_partes/head.php") ?>
    <title>Segurança</title>
</head>

<body>
    <?php
        include("_partes/topo.php");
        include("_partes/lado.php");
   ?>

    <div class="corpo">
        <div class="corpo-topo">
            <p class="p-grande">Cuidar da sua segurança, também é importante para nós</p>
            <p>Mantenha a tua palavra-passe segura. Mantendo-a sempre secreta e atualizada, não
                partilhando com ninguém.</p>
        </div>
        
        <div class="dividir-corpo esquerda">

            <div class="card-inicio" style="height:300px">
                        <style>
                        .span {
                            width: 100%;
                            display: block;
                            position: relative
                        }

                        .span img {
                            width: 20px;
                            position: absolute;
                            right: 5px;
                            top: 11px;
                        }
                        </style>

                <div class="rv-flex-centro" style="height: fit-content !important;">
                    <div>
                        <br>
                        <p class="p-medio">Palavra-passe</p>
                        <div class="limpa"></div>
                        
                        <span class="span">
                            <input type="password" class="input-entrar rv-btn" placeholder="Senha antiga" id="antiga">
                        </span>
                        <span class="span">
                            <input type="password" class="input-entrar rv-btn" placeholder="Senha nova" id="nova">
                        </span>
                        <br>
                        <div class="div-centro">
                            Muito cuidado ao alterar a palavra passe, pois é com ela, em combinação com o email que iniciará a sessão.
                        </div>
                    </div>

                </div>
                    
                <a href="" tipo="rv-aciona-modal" qual="#">
                    <div class="acao-card baixo" onclick="alteraPalavraPasse()">
                        <p>Atualizar palavra-passe</p>
                    </div>
                </a>
            </div>


        </div>

        <div class="dividir-corpo direita">
        <div class="limpa"></div>
            <ul class="menu-dentro">
                <li tipo="rv-aciona-modal" qual="#registos-senha">
                    Registros de alteração da senha
                </li>
            </ul>
        </div>
    </div>

    <!-- -->
    <div class="rv-modal" id="registos-senha">
        <div class="rv-modal-fundodetras"></div>
        <div class="rv-modal-conteudo rv-modal-m">
            <div class="rv-modal-cabecalho">
                <h3>Registros de senha</h3>
                <span class="rv-btn-r rv-btn-tres rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
            </div>
            <div class="rv-modal-corpo">
                <div class="rv-flex-centro">

                    <div>
                        <div class="div-centro">
                            <ul>
                                <?php
                                    echo historicoPalavraPasse($seguranca);
                                ?>
                            </ul>
                            
                        </div>
                        
                    </div>

                </div>
            </div>
            <div class="rv-modal-pes">
                <span class="rv-btn rv-btn-g rv-btn-dois rv-margem-10 rv-esconde-modal">Voltar</span>
            </div>
        </div>
    </div>
   
    <?php include("_partes/scripts.php") ?>
    <script src="_js/passtrength.js"></script>
    <script src="_js/seguranca/palavraPasse.js"></script>
    <script>
   
    </script>
</body>

</html>