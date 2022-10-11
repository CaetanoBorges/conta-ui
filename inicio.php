<!DOCTYPE html>
<?php include("_partes/token.php"); ?>
<?php include("controladores/Bin.php"); ?>
<?php include("controladores/inicio.php"); ?>

<html lang="pt">

<head>
    
<?php include("_partes/head.php") ?>
    <title>Conta Binga</title>
</head>

<body>
   <?php
        include("_partes/topo.php");
        include("_partes/lado.php");
   ?>

    <div class="corpo">
        <div class="corpo-topo">
            <img src="<?php echo $bin::$endpoint."Dados/Foto/".$dadosUsuario['foto']; ?>">
            <p class="p-grande">Olá, <?php echo $dadosUsuario['nome'] ?></p>
            <p>Faça a gestão das suas informações e da segurança para utilizar os serviços Binga da forma mais adequada
                para si.</p>
        </div>

        <div class="dividir-corpo esquerda">


                <div class="card-inicio">
                    <div class="escritas-card esquerda">
                        <p class="p-medio"> Dados pessoais </p><br>
                        <p>Os seus dados pessoais na nossa plataforma, pode alterar a qualquer momento.</p>
                    </div>
                    <div class="imagem-card">
                        <img src="icones/dados.png" alt="">
                    </div>
                    <a href="dados.php?ftpadbc=<?php echo $TOKEN ?>">
                        <div class="acao-card baixo">
                            <p>Tomar uma ação viável</p>
                        </div>
                    </a>
                </div>
            
                <div class="card-inicio">
                    <div class="escritas-card esquerda">
                        <p class="p-medio"> Pagamentos e subscrições </p><br>
                        <p>Controle os seus pagamentos e subscrições dos nossos serviços.</p>
                    </div>
                    <div class="imagem-card">
                        <img src="icones/pagamentosdois.png" alt="">
                    </div>
                    <a href="pagamentos.php?ftpadbc=<?php echo $TOKEN ?>">
                        <div class="acao-card baixo">
                            <p>Tomar uma ação viável</p>
                        </div>
                    </a>
                </div>
            

        </div>

        <div class="dividir-corpo direita">

            
            
                <div class="card-inicio">
                    <div class="escritas-card esquerda">
                        <p class="p-medio"> Segurança </p><br>
                        <p>A protecção da sua conta. Mantenha sempre a sua conta segura com uma palavra-passe segura.</p>
                    </div>
                    <div class="imagem-card">
                        <img src="icones/cadeado.png" alt="">
                    </div>
                    <a href="seguranca.php?ftpadbc=<?php echo $TOKEN ?>">
                        <div class="acao-card baixo">
                            <p>Tomar uma ação viável</p>
                        </div>
                    </a>
                </div>
            

            <div class="card-inicio">
                    <div class="escritas-card esquerda">
                        <p class="p-medio"> Informações </p><br>
                        <p>Informações necessárias sobre a sua conta e os nossos serviços.</p>
                    </div>
                    <div class="imagem-card">
                        <img src="icones/informacoesdois.png" alt="">
                    </div>
                    <a href="informacoes.php?ftpadbc=<?php echo $TOKEN ?>">
                        <div class="acao-card baixo">
                            <p>Tomar uma ação viável</p>
                        </div>
                    </a>
                </div>
            
        </div>

        </div>
    <?php include("_partes/scripts.php"); ?>
</body>

</html>