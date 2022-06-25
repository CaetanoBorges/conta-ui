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
        var tamanho = Math.floor((this.files[0].size) / 1024);
        if (tamanho > 1500) {
            $(".foto-perfill").html("Escolher outra foto...");
            notifica("A imagem não deve ter mais de 1 MB");
            return;
        }
        var valor = $(this).val();
        $(".foto-perfill").html(valor);
    });

    $("#upload-foto").click(function() {
        var formulario = new FormData();
        var foto = $('#foto-perfil')[0].files[0];
        formulario.append('token', token);
        formulario.append('foto', foto);

        $.ajax({
            url: 'http://127.0.0.1/binga/conta-api/Dados/alterarFoto.php',
            type: 'post',
            data: formulario,
            contentType: false,
            processData: false,
            success: function(response) {
                console.log(response);
                var obj = JSON.parse(response);
                if (obj.ok) {

                } else {

                }
            },
        });
    });

})