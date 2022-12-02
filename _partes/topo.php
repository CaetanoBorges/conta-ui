<?php include("controladores/topo.php"); ?>
<div class="cabecalho">
    <!--<img src="icones/menu.png" class="logonu">-->
    <div class="avatar"> <img src="<?php echo $bin::$endpoint."Dados/Foto/".$dadosUsuario['foto']; ?>"> </div>
    <img src="icones/apps.png" class="botao-img" tipo="rv-aciona-modal" qual="#modal-servicos">
</div>

<!-- -->
<div class="rv-modal" id="modal-servicos">
    <div class="rv-modal-fundodetras"></div>
    <div class="rv-modal-conteudo rv-modal-g">
        <div class="rv-modal-cabecalho">
            <h3>Serviços</h3>
            <span class="rv-btn-r rv-btn-quatro rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
        </div>
        <div class="rv-modal-corpo">
            <div class="rv-flex-centro">

                <div>
                    <div class="div-centro">
                        <?php
                            foreach($servicos as $servico){
                                $servico = (array) $servico;
                                ?>
                                    <div class="div-servico">
                                        <img src="<?php echo $servico['logo'] ?>" alt="">
                                        <h3><?php echo $servico['nome'] ?></h3>
                                    </div>
                                <?php
                            }
                        ?>
                    </div>   
                </div>

            </div>
        </div>
    </div>
</div>
