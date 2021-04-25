<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="_css/one.css">
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


            
            <div class="card-inicio">
                  
                  <a href=""><div class="acao-card baixo">
                      <p>Alterar nome e apelido</p>
                  </div></a>
              </div>

              <div class="card-inicio">
                  
                  <a href=""><div class="acao-card baixo">
                      <p>Alterar género e nascimento</p>
                  </div></a>
              </div>

            

        </div>

        <div class="dividir-corpo direita">

            
            
            <div class="card-inicio">
                  
                  <a href=""><div class="acao-card baixo">
                      <p>Atualisar email</p>
                  </div></a>
              </div>


            
            
              <div class="card-inicio">
                  
                  <a href=""><div class="acao-card baixo">
                      <p>Atualisar telefone</p>
                  </div></a>
              </div>


        </div>

        </div>

        <!-- -->

        <style>
            .rv-modal{display:block;}
            .rv-modal-fundodetras{ position: absolute;top:0;left:0;width: 100%;height:100%;background: rgba(0,0,0,.1);z-index: 2;}
            .rv-modal-conteudo{ position: absolute;top:10vh;left:20%;width:60%;height:80vh;background: #fff;z-index: 3;border:1px solid #7a7a7a7a;border-radius: 5px;}
            .rv-modal-cabecalho{width:100%;height: 10%; border-bottom:1px solid #aaa;position: relative;display: flex;justify-content: center;align-items: center;}
            .rv-modal-cabecalho h3{color:#7a7a7a}
            .rv-modal-corpo{ width: 100%; height: 80%; display: flex;border-bottom:1px solid #aaa;position: relative;}
            .rv-modal-pes{width:100%;height: 10px;position: relative;}
        </style>
        <div class="rv-modal">
            <div class="rv-modal-fundodetras"></div>
            <div class="rv-modal-conteudo">
                <div class="rv-modal-cabecalho">
                    <h3>Titulo do modal e mais</h3>
                </div>
                <div class="rv-modal-corpo">

                </div>
                <div class="rv-modal-pes">

                </div>
            </div>
        </div>
</body>

</html>