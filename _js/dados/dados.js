function pegaDados(token) {
    $.get("http://127.0.0.1/binga/conta-api/dados/dados.php", { objecto: token }).done(function(res) {

        var obj = JSON.parse(res);
        console.log(obj);

        $("#inome").val(obj['nome']);
        $("#iapelido").val(obj['apelido']);
        $("#Dia").val(obj['dia_nascimento']);
        $("#Ano").val(obj['ano_nascimento']);

        $("#iemail").val(obj['email']);
        $("#itelefone").val(obj['telefone']);
        //$("#Ano").val(obj['ano_nascimento']);
        $("#ifoto").attr("src", "http://127.0.0.1/binga/conta-api/foto/" + obj['foto'])

        $("#igenero");



        $(".mes-container").html(mes(obj['mes_nascimento']));
        $(".igenero-container").html(igenero(obj['genero']));
        $(".localizacao-container").html(localizacao(obj['provincia'], obj['municipio'], obj['bairro_rua'], provinciasMunicipios));

        $('#iprovincia').change(function() {
            var valor = $(this).val();
            console.log(valor);
            $(".municipio-container").html(provinciaChange(valor, provinciasMunicipios));

        })
    })
}

function igenero(genero) {

    var generos = { M: "Masculino", F: "Feminino" }
    var TEMPLATE = `
        
    `;
    if (genero == "M") {
        TEMPLATE = `
        <select name="" class="genero outline-none" id="igenero">
        <option value="m">Masculino</option>
        <option value="f">Feminino</option>
        </select>
    `;
    } else {
        TEMPLATE = `
        <select name="" class="genero outline-none" id="igenero">
        <option value="f">Feminino</option>
        <option value="m">Masculino</option>
        </select>
    `;

    }

    return TEMPLATE;

}

function mes(mes) {
    var k = mes - 1;
    var meses = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"];
    if (k in meses) {
        let mes = meses[k];
        var TEMPLATE = `<select name="" class="mes outline-none" id="mes"><option value="${k+1}">${mes}</option><option value="1">Janeiro</option>
            <option value="2">Fevereiro</option><option value="3">Março</option>
            <option value="4">Abril</option><option value="5">Maio</option><option value="6">Junho</option><option value="7">Julho</option>
            <option value="8">Agosto</option>
            <option value="9">Setembro</option>
            <option value="10">Outubro</option>
            <option value="11">Novembro</option>
            <option value="12">Dezembro</option>
        </select>`;

        return TEMPLATE;
    }
}

function localizacao(prov, mun, bairro, territorios) {
    if (prov) {
        var keys = Object.keys(territorios);
        var provincias = '';
        var municipios = '';
        for (k in keys) {
            provincias += '<option value="' + keys[k] + '">' + keys[k] + '</option>';
        }
        for (k in territorios[prov]['municipios']) {
            municipios += '<option value="' + territorios[prov]['municipios'][k] + '">' + territorios[prov]['municipios'][k] + '</option>';
        }
        var capital = territorios[prov]['capital'];
        var municipio = '';
        if (mun) {
            municipio = mun;
        }

        var TEMPLATE = `
            <div class="limpa" ></div>
            <select name="" class="genero outline-none rv-largura-100" id="iprovincia">
                <option value="${prov}">${prov}</option>
                ${provincias}
            </select>
            <div class="limpa" ></div>
            <div class="municipio-container">
                <select name="" class="genero outline-none rv-largura-100" id="imunicipio">
                    <option value="${municipio}">${municipio}</option>
                    <option value="${capital}">${capital}</option>
                    ${municipios}
                </select>
            </div>
            <input type="text" class="rv-btn input-entrar" placeholder="Bairro e rua" value="${bairro}" id="ibairro">
        `;
        return TEMPLATE;

    } else {
        var keys = Object.keys(territorios);
        var provincias = '';
        var municipios = '';
        for (k in keys) {
            provincias += '<option value="' + keys[k] + '">' + keys[k] + '</option>';
        }



        var TEMPLATE = `
            <div class="limpa" ></div>
            <select name="" class="genero outline-none rv-largura-100" id="iprovincia">
                <option value="0">Seleciona uma provincia</option>
                ${provincias}
            </select>
            <div class="limpa" ></div>
            <div class="municipio-container">
                <select name="" class="genero outline-none rv-largura-100" id="imunicipio">
                    
                </select>
            </div>
            <input type="text" class="rv-btn input-entrar" placeholder="Bairro e rua" value="${bairro}" id="ibairro">
        `;
        return TEMPLATE;
    }
}

function provinciaChange(prov, territorios) {
    var capital = territorios[prov]['capital'];
    var municipios = '';
    for (k in territorios[prov]['municipios']) {
        municipios += '<option value="' + territorios[prov]['municipios'][k] + '">' + territorios[prov]['municipios'][k] + '</option>';
    }

    var TEMPLATE = `
    <select name="" class="genero outline-none rv-largura-100" id="imunicipio">
    <option value="0">Seleciona uma provincia</option>
        <option value="${capital}">${capital}</option>
        ${municipios}
    </select>
    `;
    return TEMPLATE;
}


$(document).ready(function() {
    pegaDados('Qw17LWU2fOKhJA8uzJWGzABR21d9BZdT3jmSEfIcvdBAaEcSM1S2HvabxRdBUVDPX\/YuXOQx8fm5DTbO3yWAXGq6SUPnuBYMlV4vsg==.NmI2NTcxNzA2ODM2NzczNTMyNGI2NTU4Mzg3ODM2MzY3NDU5N2EzNTU0NGY1ODRjNTI0NjQ3NDc2ZTQ0NmE2NTY0NjU3MjVhNmI1NTY2NTA=');

})