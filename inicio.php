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
                <li class="activo"> <img src="icones/ajuda.png"> <span>Página inicial</span></li>
            </a>
            <a href="">
                <li> <img src="icones/ajuda.png"> <span>Informações pessoais</span></li>
            </a>
            <a href="">
                <li> <img src="icones/ajuda.png"> <span>Segurança</span></li>
            </a>
            <a href="">
                <li> <img src="icones/ajuda.png"> <span>Pagamentos e subscrições</span></li>
            </a>
            <div class="linha-divisoria"></div>
            <a href="">
                <li> <img src="icones/ajuda.png"> <span>Informações</span></li>
            </a>
        </ul>
    </div>
    <div class="corpo">
        
    </div>
</body>
</html>