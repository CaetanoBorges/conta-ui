const debliwui_menu = document.createElement('template');
debliwui_menu.innerHTML = `
    <style>
        .container{
            position:fixed;
            width:250px;
            left: 0;
            top:61px;
            height:fit-content;
            z-index: 10000;
            padding:0;
        }

        .relativa{
            position: relative;
        }
        
        ul {
            list-style: none;
            width: 100%;
            margin-left: -50px;
        }
        
        ul a {
            text-decoration: none;
            color: #7a7a7a;
            font-weight: 600;
            text-align: left;
        }
        
        ul li:hover {
            background: rgba(0, 0, 0, .1)
        }
        
        ul li {
            width: 100%;
            padding: 5px;
            display: flex;
            align-items:center;
            border-radius: 0 5px 5px 0
        }
        
        ul li img {
            width: 25px;
            margin: 0 10px 0 20px;
        }

    </style>

    <div class="container">
        <div class="relativa">
            <ul>
                <a href="" class="url-inicio">
                    <li id="menu-inicio"> <img src="icones/pessoa.png"> <span>Página inicial</span></li>
                </a>
                <a href="" class="url-dados">
                    <li id="menu-dados"> <img src="icones/identidade.png"> <span>Dados pessoais</span></li>
                </a>
                <a href="seguranca.php?ftpadbc=<?php echo $TOKEN ?>" class="url-seguranca">
                    <li id="menu-seguranca"> <img src="icones/seguranca.png"> <span>Segurança</span></li>
                </a>
                <a href="" class="url-pagamentos">
                    <li id="menu-pagamento"> <img src="icones/pagamentos.png"> <span>Pagamentos e subscrições</span></li>
                </a>
                <div class="linha-divisoria"></div>
                <a href="" class="url-informacoes">
                    <li id="menu-informacoes"> <img src="icones/informacoes.png"> <span>Informações</span></li>
                </a>
            </ul>
        </div>
    </div>
`;

class debliwuimenu extends HTMLElement {

    constructor() {
        super();
        this.attachShadow({ mode: 'open' });
        this.shadowRoot.appendChild(debliwui_menu.content.cloneNode(true));
    }

    fechar(esse) {
        let container = esse.shadowRoot.querySelector('.container');
        container.style.display = "none";
    }

    connectedCallback() {
        var esse = this;

        var token = this.getAttribute('token');


        this.shadowRoot.querySelector('.url-inicio').setAttribute("href", "inicio.php?ftpadbc=" + token);
        this.shadowRoot.querySelector('.url-dados').setAttribute("href", "dados.php?ftpadbc=" + token);

        this.shadowRoot.querySelector('.url-seguranca').setAttribute("href", "seguranca.php?ftpadbc=" + token);
        this.shadowRoot.querySelector('.url-pagamentos').setAttribute("href", "pagamentos.php?ftpadbc=" + token);
        this.shadowRoot.querySelector('.url-informacoes').setAttribute("href", "informacoes.php?ftpadbc=" + token);


    }




}

window.customElements.define('debliwui-menu', debliwuimenu)