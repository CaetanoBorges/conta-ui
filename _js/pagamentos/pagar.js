$(document).ready(function() {
    $('#comprovativo').change(function() {
        var tamanho = Math.floor((this.files[0].size) / 1024);
        if (tamanho > 1500) {
            $(".span-up").html("Escolher outro arquivo...");
            Bin.notifica("O comprovativo não deve ter mais de 1 MB");
            return;
        }
    });

    $("#accao-faz-pagamento").click(function() {
        if (($('#comprovativo').val()).length <= 3) {
            return;
        }
        if (($('#tipo-pagamento').val()).length <= 3) {
            return;
        }
        var formulario = new FormData();
        var comprovativo = $('#comprovativo')[0].files[0];
        var tipo = $('#tipo-pagamento').val();
        var chaveApp = $('#comprovativo')[0].files[0];

        formulario.append('token', token);
        formulario.append('comprovativo', comprovativo);
        formulario.append('tipo', tipo);
        formulario.append('app', chaveApp);

        Bin.loader(1);
        $.ajax({
            url: Bin.endpoint + 'Pagamentos/pagar.php',
            type: 'post',
            data: formulario,
            contentType: false,
            processData: false,
            success: function(response) {
                var obj = JSON.parse(response);
                if (obj.ok) {
                    Bin.notifica("Pagamento bem sucedido");
                } else {
                    Bin.notifica("Algo inesperado aconteceu, repita...");
                }
                Bin.loader();
            }
        });
    });

})