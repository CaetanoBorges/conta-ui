<!DOCTYPE html>
<html lang="pt">

<head>
    <?php include("_partes/head.php") ?>
    <title>Pagamentos</title>
</head>

<body>
    <?php
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
            <p class="p-grande">Aplicativos</p>
            <ul class="menu-dentro">
                <li tipo="rv-aciona-modal" qual="#app">
                    Registros de alteração do código
                </li>
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
    </div>
     <!-- -->
    <div class="rv-modal" id="app">
        <div class="rv-modal-fundodetras"></div>
        <div class="rv-modal-conteudo rv-modal-p">
            <div class="rv-modal-cabecalho">
                <h3>Registros do código de seis digitos</h3>
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
</body>

</html>