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


$(document).ready(function() {
    var token = localStorage.getItem("ftpadb-binga");
    //pegaDados(token);
    $('#iprovincia').change(function() {
        var valor = $(this).val();
        $(".municipio-container").html(provinciaChange(valor, provinciasMunicipios));

    });

    $('#foto-perfil').change(function() {
        var valor = $(this).val();
        $(".foto-perfill").html(valor);
    });

})