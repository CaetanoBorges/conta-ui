function pegaDados(token) {
    $.get("http://127.0.0.1/binga/conta-api/Dados/dados.php", { token: token }).done(function(res) {

        var objecto = JSON.parse(res);
        var obj = JSON.parse(objecto.payload);

        $("#inome").val(obj['nome']);
        $("#iapelido").val(obj['apelido']);
        $("#Dia").val(obj['dia_nascimento']);
        $("#Ano").val(obj['ano_nascimento']);

        $("#iemail").val(obj['email']);
        $("#itelefone").val(obj['telefone']);
        //$("#Ano").val(obj['ano_nascimento']);
        $("#ifoto").attr("src", "http://127.0.0.1/binga/conta-api/Dados/Foto/" + obj['foto'])

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
    var token = localStorage.getItem("ftpadb-binga");
    pegaDados(token);

})