<!DOCTYPE html>
<?php include("_partes/token.php"); ?>
<?php include("controladores/Bin.php"); ?>
<?php include("controladores/inicio.php"); ?>
<html lang="pt">

<head>
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
            <p>Mantenha a tua palavra-passe segura. Mantendo-a sempre secreta, não
                partilhando com ninguém.</p>
        </div>
        
        <div class="dividir-corpo esquerda">

            <div class="card-inicio">
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

                <div class="rv-flex-centro">
                    <div>
                        <br>
                        <p class="p-medio">Palavra-passe</p>
                        <div class="limpa"></div>
                        
                        <span class="span">
                            <input type="password" class="input-entrar rv-btn" placeholder="Senha antiga"
                                class="passUm">
                            <i><img src="icones/olho.png" class="passUmVer"></i>
                        </span>
                        <span class="span">
                            <input type="password" class="input-entrar rv-btn" placeholder="Senha nova"
                                class="passUm">
                            <i><img src="icones/olho.png" class="passUmVer"></i>
                        </span>
                        <span class="span">
                            <input type="password" class="input-entrar rv-btn" placeholder="Repetir senha nova"
                                class="passUm">
                            <i><img src="icones/olho.png" class="passUmVer"></i>
                        </span>


                    </div>

                </div>
                <a href="" tipo="rv-aciona-modal" qual="#">
                    <div class="acao-card baixo">
                        <p>Atualisar palavra-passe</p>
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
        <div class="rv-modal-conteudo rv-modal-p">
            <div class="rv-modal-cabecalho">
                <h3>Registros de senha</h3>
                <span class="rv-btn-r rv-btn-tres rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
            </div>
            <div class="rv-modal-corpo">
                <div class="rv-flex-centro">

                    <div>
                        <div class="div-centro">
                        </div>
                        
                    </div>

                </div>
            </div>
            <div class="rv-modal-pes">
                <span class="rv-btn rv-btn-g rv-btn-dois rv-margem-10 rv-esconde-modal">Voltar</span>
                <span class="rv-btn rv-btn-g rv-btn-um rv-margem-10">Continuar</span>
            </div>
        </div>
    </div>
   

    <?php include("_partes/scripts.php") ?>
    <script>
    const pswrdField = document.querySelector("span input[type='password']"),
        toggleBtn = document.querySelector("span i");

    toggleBtn.onclick = () => {
        if (pswrdField.type == "password") {
            pswrdField.type = "text";
            toggleBtn.classList.add('ativo');
        } else {
            pswrdField.type = "password";
            toggleBtn.classList.remove('ativo');
        }
    }
    </script>
</body>

</html>