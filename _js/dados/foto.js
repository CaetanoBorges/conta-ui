$(document).ready(function() {
    $('#foto-perfil').change(function() {
        var tamanho = Math.floor((this.files[0].size) / 1024);
        if (tamanho > 1500) {
            $(".foto-perfill").html("Escolher outra foto...");
            Bin.notifica("A imagem não deve ter mais de 1 MB");
            return;
        }
        var valor = $(this).val();
        $(".foto-perfill").html(valor);
    });

    $("#upload-foto").click(function() {
        if (($('#foto-perfil').val()).length <= 3) {
            return;
        }
        var formulario = new FormData();
        var foto = $('#foto-perfil')[0].files[0];
        formulario.append('token', token);
        formulario.append('foto', foto);

        Bin.loader(1);
        $.ajax({
            url: Bin.endpoint + 'Dados/alterarFoto.php',
            type: 'post',
            data: formulario,
            contentType: false,
            processData: false,
            success: function(response) {
                var obj = JSON.parse(response);
                if (obj.ok) {
                    $("#ifoto").attr('src', Bin.endpoint + "Foto/" + obj.payload);
                    $(".avatar").attr('src', Bin.endpoint + "Foto/" + obj.payload);
                    $(".foto-perfill").html("Alterou a foto");
                } else {

                }
                Bin.loader();
            }
        });
    });

})