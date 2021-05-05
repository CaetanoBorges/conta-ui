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
        <div class="limpa"></div>
    </div>
    <!-- -->
    <div class="rv-modal" id="app">
        <div class="rv-modal-fundodetras"></div>
        <div class="rv-modal-conteudo rv-modal-g">
            <div class="rv-modal-cabecalho">
                <h3>Nome da app</h3>
                <span class="rv-btn-r rv-btn-tres rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
            </div>
            <div class="rv-modal-corpo">
                <div class="rv-flex-centro">

                    <div>

                        <div class="dividir-corpo esquerda">
                            <p class="p-grande">Custos</p>
                            <ul class="menu-dentro">
                                <li>Semestral: 12 000 AO</li>
                                <li>Anual: 20 000 AO</li>
                            </ul>
                            <div class="limpa"></div>
                            <p class="rv-btn rv-btn-um rv-cursor rv-txt-centro" tipo="rv-aciona-collapse"
                                qual="#registro-sub">Registro de subscrições
                            </p>

                            <div class="rv-collapse" id="registro-sub">
                                <ul class="menu-dentro">
                                    <li>Semestral: 22-04-2021 <i class="rv-txt-cl-tres">Pendente</i></li>
                                    <li>Semestral: 20-07-2020 <i class="rv-txt-cl-dois">Confirmado</i></li>
                                    <li>Semestral: 02-01-2020 <i class="rv-txt-cl-dois">Confirmado</i></li>
                                </ul>
                            </div>

                        </div>
                        <div class="dividir-corpo direita">
                            <style>
                            .inputfile {
                                width: 0.1px;
                                height: 0.1px;
                                opacity: 0;
                                overflow: hidden;
                                position: absolute;
                                z-index: -1;
                            }

                            .inputfile+label {
                                font-size: 1.07em;
                                font-weight: 700;
                                color: white;
                                background-color: black;
                                display: flex;
                                justify-content: center;
                                align-items: center;
                                padding: 3px;
                                position: relative;
                                border-radius: 5px;
                            }

                            .inputfile:focus+label {
                                background-color: #000;
                            }

                            .inputfile+label:hover {
                                background-color: #000099;
                            }

                            .inputfile+label {
                                cursor: pointer;
                                /* "hand" cursor */
                            }

                            .inputfile:focus+label {
                                outline: 1px dotted #000099;
                                outline: -webkit-focus-ring-color auto 5px;
                            }

                            .img-up {
                                width: 30px;
                                position: absolute;
                                top: 3px;
                                left: 5px
                            }

                            .img-up,
                            .span-up {
                                display: inline-block
                            }
                            </style>
                            <script>
                            
                            </script>
                            <p class="p-grande rv-txt-centro">Submeter pagamento</p>
                            <input type="file" name="file" id="comprovativo" class="inputfile"
                                data-multiple-caption="{count} files selected" multiple />
                            <label for="comprovativo" title="Pode ser documento ou imagem" class="input-entrar"> <img
                                    src="icones/arq-up.png" class="img-up"> <span class="span-up">Inserir
                                    fatura</span></label>

                            <select name="" id="" class="input-entrar">
                                <option value="0">Selecionar tempo</option>
                                <option value="s">Semestral</option>
                                <option value="a">Anual</option>
                            </select>
                            <button class="input-entrar">Submeter</button>
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
</body>

</html>