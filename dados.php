<!DOCTYPE html>
<html lang="pt">

<head>
    <?php include("_partes/head.php") ?>
    <title>Dados pessoais</title>
</head>

<body>
    <?php
        include("_partes/topo.php");
        include("_partes/lado.php");
   ?>

    <div class="corpo">
        <div class="corpo-topo">
            <p class="p-grande">Cuide dos seus dados pessoais</p>
            <p>Faça a gestão das suas informações pessoais para utilizar os nossos serviços da forma mais adequada
                para si.</p>
        </div>

        <div class="dividir-corpo esquerda">
            
            <ul class="menu-dentro">
                <li tipo="rv-aciona-modal" qual="#foto">
                    Atualisar foto
                </li>
                <li tipo="rv-aciona-modal" qual="#nome">
                    Alterar nome e apelido
                </li>
                <li tipo="rv-aciona-modal" qual="#nascimento">
                    Alterar género e nascimento
                </li>
                <li tipo="rv-aciona-modal" qual="#email">
                    Atualisar email
                </li>
                <li tipo="rv-aciona-modal" qual="#telefone">
                Atualisar telefone
                </li>
            </ul>



        </div>

        <div class="dividir-corpo direita">

            <div class="card-inicio">
                
            <div class="rv-flex-centro">
                <div>
                    <br>
                    <p class="p-medio">Localização</p>
                        <div class="localizacao-container">

                        </div>
                </div>
            
            </div>
                <a href="" tipo="rv-aciona-modal" qual="#">
                    <div class="acao-card baixo">
                        <p>Atualisar endereço</p>
                    </div>
                </a>
            </div>


        </div>

    </div>

    <!-- -->
    <div class="rv-modal" id="foto">
        <div class="rv-modal-fundodetras"></div>
        <div class="rv-modal-conteudo rv-modal-p">
            <div class="rv-modal-cabecalho">
                <h3>Alterar foto</h3>
                <span class="rv-btn-r rv-btn-tres rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
            </div>
            <div class="rv-modal-corpo">
                <div class="rv-flex-centro">

                    <div>
                        <div class="div-centro">
                            <img src="icones/pessoa.png" style="width:50%;border-radius:50%;" id="ifoto"> 
                        </div>
                        
                        <input type="file" class=" rv-btn">
                    </div>

                </div>
            </div>
            <div class="rv-modal-pes">
                <span class="rv-btn rv-btn-g rv-btn-dois rv-margem-10 rv-esconde-modal">Voltar</span>
                <span class="rv-btn rv-btn-g rv-btn-um rv-margem-10">Continuar</span>
            </div>
        </div>
    </div>
    
    <!-- -->
    <div class="rv-modal" id="nome">
        <div class="rv-modal-fundodetras"></div>
        <div class="rv-modal-conteudo rv-modal-p">
            <div class="rv-modal-cabecalho">
                <h3>Atualisar nome e apelido</h3>
                <span class="rv-btn-r rv-btn-tres rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
            </div>
            <div class="rv-modal-corpo">
                <div class="rv-flex-centro">

                    <div>
                        <div class="div-centro">
                        </div>
                        <input type="text" placeholder="Nome próprio" class="input-entrar bckgrnd-input rv-btn"
                            id="inome">
                        <input type="text" placeholder="Apelido" class="input-entrar bckgrnd-input rv-btn" 
                            id="iapelido">
                    </div>

                </div>
            </div>
            <div class="rv-modal-pes">
                <span class="rv-btn rv-btn-g rv-btn-dois rv-margem-10 rv-esconde-modal">Voltar</span>
                <span class="rv-btn rv-btn-g rv-btn-um rv-margem-10">Continuar</span>
            </div>
        </div>
    </div>
    <!-- -->
    <div class="rv-modal" id="nascimento">
        <div class="rv-modal-fundodetras"></div>
        <div class="rv-modal-conteudo rv-modal-p">
            <div class="rv-modal-cabecalho">
                <h3>Atualisar nascimento</h3>
                <span class="rv-btn-r rv-btn-tres rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
            </div>
            <div class="rv-modal-corpo">
                <div class="rv-flex-centro">

                    <div>
                        <div class="div-centro">
                        </div>
                        <input type="number" placeholder="Dia" class="dia-mes" id="Dia">
                        <div class="mes-container" style="width:100px;display:inline-block">

                        </div>
                        <input type="number" placeholder="Ano" class="dia-mes" id="Ano">
                        <br>
                        <div class="igenero-container">

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
    <!-- -->
    <div class="rv-modal" id="email">
        <div class="rv-modal-fundodetras"></div>
        <div class="rv-modal-conteudo rv-modal-p">
            <div class="rv-modal-cabecalho">
                <h3>Atualisar email</h3>
                <span class="rv-btn-r rv-btn-tres rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
            </div>
            <div class="rv-modal-corpo">
                <div class="rv-flex-centro">

                    <div>
                        <div class="div-centro">
                        </div>
                        <input type="email" placeholder="Email" class="input-entrar bckgrnd-input rv-btn" id="iemail">
                    </div>

                </div>
            </div>
            <div class="rv-modal-pes">
                <span class="rv-btn rv-btn-g rv-btn-dois rv-margem-10 rv-esconde-modal">Voltar</span>
                <span class="rv-btn rv-btn-g rv-btn-um rv-margem-10">Continuar</span>
            </div>
        </div>
    </div>
    <!-- -->
    <div class="rv-modal" id="telefone">
        <div class="rv-modal-fundodetras"></div>
        <div class="rv-modal-conteudo rv-modal-p">
            <div class="rv-modal-cabecalho">
                <h3>Atualisar telefone</h3>
                <span class="rv-btn-r rv-btn-tres rv-esconde-modal" style="position:absolute;top:1vh;right:1%;"></span>
            </div>
            <div class="rv-modal-corpo">
                <div class="rv-flex-centro">

                    <div>
                        <div class="div-centro">
                        </div>
                        <input type="number" placeholder="Telefone" class="input-entrar bckgrnd-input rv-btn" id="itelefone">
                    </div>

                </div>
            </div>
            <div class="rv-modal-pes">
                <span class="rv-btn rv-btn-g rv-btn-dois rv-margem-10 rv-esconde-modal">Voltar</span>
                <span class="rv-btn rv-btn-g rv-btn-um rv-margem-10">Continuar</span>
            </div>
        </div>
    </div>

    <!-- IMPORTAR TEMPLATES -->
    
    <link rel="import" href="js/dados/dados.templates.html">

   <?php include("_partes/scripts.php") ?>
   <script src="_js/dados/territorios.js"></script>
   <script src="_js/dados/dados.js"></script>
</body>

</html>