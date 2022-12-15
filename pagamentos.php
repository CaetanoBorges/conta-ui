<!DOCTYPE html>
<?php include("_partes/token.php"); ?>
<?php include("controladores/Bin.php"); ?>
<?php include("controladores/inicio.php"); ?>
<?php include("controladores/topo.php"); ?>
<?php include("controladores/pagamentos.php"); ?>
<html lang="pt">

<head>
    <?php include("_partes/head.php") ?>
    <link rel="stylesheet" href="http://cdn.binga.ao/conta/_css/pagamentos.css">
    <title>Pagamentos</title>
</head>

<body>
    <?php
        include("_partes/load.php");
        include("_partes/topo.php");
        include("_partes/lado.php");
   ?>

    <div class="corpo"> 
        <div class="corpo-topo">
            <p class="p-grande">Não fique sem os serviços importantes para si</p>
            <p>Aqui pode ver os detalhes de suas subscrições e apenas dos serviços pagos, para que tenha controle do seu
                tempo de uso. Os serviços grátis não aparecem aqui.</p>
        </div>
        <div class="limpa"></div>
        <div class="dividir-corpo esquerda">
            <p class="p-grande">Servicos</p>
            <ul class="menu-dentro">
                 <?php
                    foreach($servicos as $UIIDapp => $servico){
                        $servico = (array) $servico;
                        ?>
                        <li tipo="rv-aciona-modal" qual="#app<?php echo $servico['id'] ?>">
                            <?php echo $servico['nome'] ?>
                        </li>

                        <!-- -->
                            <div class="rv-modal" id="app<?php echo $servico['id'] ?>">
                                <div class="rv-modal-fundodetras"></div>
                                <div class="rv-modal-conteudo rv-modal-g">
                                    <div class="rv-modal-cabecalho">
                                        <h3><?php echo $servico['nome'] ?></h3>
                                        <span class="rv-btn-r rv-btn-quatro rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
                                    </div>
                                    <div class="rv-modal-corpo">
                                        <div class="rv-flex-centro">
                                            <div>

                                                <div class="dividir-corpo esquerda">
                                                    <img src="<?php echo $servico['logo'] ?>" class="logo-modal-pagamento">
                                                    <p class="p-grande">Preços</p>
                                                    <ul class="menu-dentro">
                                                        <?php 
                                                        $precos = (array) json_decode($servico['preco']);
                                                        foreach($precos as $chave => $valor){
                                                        ?>
                                                        <li style="text-transform: capitalize;"><?php echo array_keys($precos,$valor)[0].": ".number_format($valor,0,' ', ' '); ?> AO</li>
                                                        <?php } ?>
                                                    </ul>
                                                    <div class="limpa"></div>
                                                    <p class="rv-btn rv-btn-dois rv-cursor rv-txt-centro" tipo="rv-aciona-collapse"
                                                        qual="#registro-sub<?php echo $servico['chave']; ?>">Registro de subscrições
                                                    </p>

                                                    <div class="rv-collapse" id="registro-sub<?php echo $servico['chave']; ?>">
                                                        <?php registoDePagamentos($bin,$url,$TOKEN,$servico['chave']); ?>
                                                    </div>

                                                </div>
                                                <div class="dividir-corpo direita">
                                                    <p class="p-grande rv-txt-centro">Pagar subscrição</p>
                                                    <input type="file" name="file" id="comprovativo<?php echo $UIIDapp ?>" class="inputfile" accept="image/png, image/jpg, image/jpeg, application/pdf" required="required"/>
                                                    <label for="comprovativo<?php echo $UIIDapp ?>" title="Pode ser documento ou imagem" class="input-entrar rv-btn-quatro"> <img
                                                            src="icones/arq-up.png" class="img-up"> <span class="span-up comprovativo<?php echo $UIIDapp ?>" >Inserir
                                                            fatura</span></label>

                                                    <select name="" id="tipo-pagamento<?php echo $UIIDapp ?>" class="input-entrar" required="required">
                                                        <option value="0">Selecionar tempo</option>
                                                        <option value="semestral">Semestral</option>
                                                        <option value="anual">Anual</option>
                                                    </select>
                                                    <script>
                                                    </script>
                                                    
                                                    <input type="hidden" value="<?php echo $servico['chave'] ?>" id="chave-app<?php echo $UIIDapp ?>">
                                                    <button class="input-entrar" onclick='accaoFazPagamento("<?php echo $UIIDapp ?>")'>Submeter</button>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- -->


                        <?php
                    }
                ?>
            </ul>
        </div>

        <div class="dividir-corpo direita">
            <p class="p-grande">Metódos de subscrição</p>
            <ul class="lista-numerica">
                <li tipo="rv-aciona-modal" qual="#registos-pin">
                    Semestral
                </li>
                <li tipo="rv-aciona-modal" qual="#registos-senha">
                    Anual
                </li>
            </ul>


            <p class="p-grande">Metódos de pagamento</p>
            <ul class="lista-numerica">
                <li tipo="rv-aciona-modal" qual="#registos-pin">
                    Transferencia: Usando o iban e submetendo o comprovativo
                </li>
                <li tipo="rv-aciona-modal" qual="#registos-senha">
                    Depósito: Usando o número de conta e submetendo o comprovativo
                </li>
                <li tipo="rv-aciona-modal" qual="#registos-senha">
                    Em mão: Usando um dos nossos balcões
                </li>
            </ul>
            <p class="p-grande">Observações</p>
            <ul class="lista-numerica">
                <li tipo="rv-aciona-modal" qual="#registos-pin">
                    A subscrição não é para a plataforma toda.
                </li>
                <li tipo="rv-aciona-modal" qual="#registos-senha">
                    Cada serviço precisa da sua própria subscrição
                </li>
                <li tipo="rv-aciona-modal" qual="#registos-senha">
                    Os serviços grátis não precisam de subscrição
                </li>
            </ul>
            <p class="p-grande">Linha de atendimento</p>
            <ul class="lista-numerica">
                <li tipo="rv-aciona-modal" qual="#registos-pin">
                    Email: debliw.ao@gmail.com
                </li>
                <li tipo="rv-aciona-modal" qual="#registos-senha">
                    Telefone: 947436662

                </li>
                <li tipo="rv-aciona-modal" qual="#registos-senha">
                    Telefone: 921797626
                </li>
            </ul>


        </div>
        <div class="limpa"></div>
    </div>

    

    <?php include("_partes/scripts.php") ?>
    <script src="http://cdn.binga.ao/conta/_js/pagamentos/pagar.js"></script>
</body>

</html>