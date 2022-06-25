function provinciaChange(prov, territorios) {
    var capital = territorios[prov]['capital'];
    var municipios = '';
    for (k in territorios[prov]['municipios']) {
        municipios += '<option value="' + territorios[prov]['municipios'][k] + '">' + territorios[prov]['municipios'][k] + '</option>';
    }

    var TEMPLATE = `
    <select name="" class="genero outline-none rv-largura-100" id="imunicipio">
    <option value="0">Seleciona um município</option>
        <option value="${capital}">${capital}</option>
        ${municipios}
    </select>
    `;
    return TEMPLATE;
}

function alterarLocalizacao() {

    Bin.loader(1);
    $.post(Bin.endpoint + 'alterarLocalizacao.php', { token: token, provincia: $('#iprovincia').val(), municipio: $('#imunicipio').val(), bairro: $('#ibairro').val() }).done(function(response) {
        console.log(response);
        var obj = JSON.parse(response);
        if (obj.ok) {
            Bin.notifica(obj.payload);
        } else {
            Bin.notifica(obj.payload);
        }
    }).always(function(erro) {
        Bin.loader();
    })
}

$(document).ready(function() {

    $('#iprovincia').change(function() {
        var valor = $(this).val();
        $(".municipio-container").html(provinciaChange(valor, provinciasMunicipios));

    });

})