<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conta</title>
</head>
<style>
    *{margin:0;padding:0;}
    .cabecalho{width: 100%;height:60px;border-bottom: 1px solid #eaeaea;}
    .logotipo{width: 80px;float: left;margin-left: 10px;}
    .botao-img{width: 25px;float: right;margin:18px 20px 0 0;}
    .avatar{width: 40px;float: right;margin:11px 10px 0 0;border-radius:50%;}

    .lado{ width: 250px; float:left;margin-top:20px;}
    .lado ul{list-style:none; width: 100%}
    .lado ul a{text-decoration:none;color: #7a7a7a;font-weight:600;text-align:left;}
    .lado ul li:hover{background:rgba(0,0,0,.1)}
    .lado ul li{width:100%;padding:5px;display:flex;align-items:center;border-radius:0 5px 5px 0}
    .lado ul li img{width:25px;margin: 0 10px 0 20px;}

    .linha-divisoria{width:100%;height:1px;background:#eaeaea}
    .activo{background:rgba(0,0,255,.1); color: rgba(0,0,100,.6)}
    .activo:hover{background:rgba(0,0,255,.1) !important;}


    .corpo{ width:700px; display: block; margin: 20px auto;}
    .corpo-topo{ width: 100%;margin-bottom: 10px; }
    .corpo-topo img{width: 100px;display: block;margin: 0 auto 5px auto;}
    .corpo-topo h2{text-align: center;}
    .corpo-topo p{text-align: center;}
    .dividir-corpo{width: 335px;}
    .card-inicio{width: 100%;height:300px;display:block;margin: 30px 0 ;position:relative;border:1px solid #eaeaeaea;}


    .direita{float:right}
    .esquerda{float:left}

    .limpa{ width: 100%; display: block; clear: both; height:10px}

</style>
<body>
    <div class="cabecalho">
        <img src="logo.png" class="logotipo">
        <img src="icones/default.png" class="avatar">
        <img src="icones/apps.png" class="botao-img">
        <div class="img-perfil">
            <img src="icones/ajuda.png" class="botao-img">
        </div>
    </div>
    <div class="lado">
        <ul>
            <a href="">
                <li class="activo"> <img src="icones/pessoa.png"> <span>Página inicial</span></li>
            </a>
            <a href="">
                <li> <img src="icones/identidade.png"> <span>Informações pessoais</span></li>
            </a>
            <a href="">
                <li> <img src="icones/seguranca.png"> <span>Segurança</span></li>
            </a>
            <a href="">
                <li> <img src="icones/pagamentos.png"> <span>Pagamentos e subscrições</span></li>
            </a>
            <div class="linha-divisoria"></div>
            <a href="">
                <li> <img src="icones/informacoes.png"> <span>Informações</span></li>
            </a>
        </ul>
    </div>
    <div class="corpo">
        <div class="corpo-topo">
            <img src="icones/default.png">
            <h2>Olá, Nome Usuario</h2>
            <p>Faça a gestão das suas informações e da segurança para utilizar os serviços www da forma mais adequada para si.</p>
        </div>

        <div class="dividir-corpo esquerda">
            <div class="card-inicio">
                <style>
                    .escritas-card{width:52%;padding:5%;float:left;}
                    .imagem-card{width:35%;float:right;margin-top:75px;}
                    .imagem-card img{width:90%;display: block;margin:0 auto;}
                    .acao-card{width:95%;position:absolute;bottom:0;left:0;padding:5%;border-top: 1px solid #eaeaea;}
                </style>
                <div class="escritas-card esquerda">
                    <h3>Tema do que s´ra abordado</h3> <br>
                    <p>escritas do card e mais coisas aquin fjrhtvr tjrh tem tertjrtmjrt
                    escritas do card e mais coisas aquin fjrhtvr tjrh tem tertjrtmjrt
                    escritas do card e mais coisas aquin fjrhtvr tjrh tem tertjrtmjrt
                        
                    </p>
                </div>
                <div class="imagem-card">
                    <img src="icones/default.png" alt="">
                </div>
                <div class="acao-card baixo">
                    <p>Tomar uma acao viavel</p>
                </div> 
            </div>
            <div class="card-inicio">
                hsdjfh sjbsf shf 
            </div>
        </div>
        <div class="dividir-corpo direita">
            <div class="card-inicio">
                hsdjfh sjbsf shf 
            </div>
            <div class="card-inicio">
                hsdjfh sjbsf shf 
            </div>
        </div>

    </div>
</body>
</html>