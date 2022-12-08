$(document).ready(function() {
    $('.inputfile').change(function() {
        var arquivo = $("#" + this.getAttribute("id"))[0];
        var tamanho = Math.floor((arquivo.files[0].size) / 1024);
        if (tamanho > 1500) {
            $("." + this.getAttribute("id")).html("Escolher outro arquivo...");
            Bin.notifica("O comprovativo não deve ter mais de 1 MB");
            return;
        }
        $("." + this.getAttribute("id")).html(arquivo.files[0].name)
    });

})

function accaoFazPagamento(UIIDapp) {


    if (($('#comprovativo' + UIIDapp).val()).length <= 3) {
        Bin.notifica("Insira o comprovativo");
        return;
    }
    if (($('#tipo-pagamento' + UIIDapp).val()).length <= 3) {
        Bin.notifica("Selecione o tipo de pagamento");
        return;
    }
    var formulario = new FormData();
    var comprovativo = $('#comprovativo' + UIIDapp)[0].files[0];
    var tipo = $('#tipo-pagamento' + UIIDapp).val();
    var app = $('#chave-app' + UIIDapp).val();


    formulario.append('token', token);
    formulario.append('comprovativo', comprovativo);
    formulario.append('tipo', tipo);
    formulario.append('app', app);

    Bin.loader(1);
    $.ajax({
        url: Bin.endpoint + 'Pagamentos/pagar.php',
        type: 'post',
        data: formulario,
        contentType: false,
        processData: false,
        success: function(response) {
            console.log(response);
            var obj = JSON.parse(response);
            if (obj.ok) {
                Bin.notifica("Pagamento bem sucedido");
            } else {
                Bin.notifica("Algo inesperado aconteceu, repita...");
            }
            Bin.loader();
        }
    });
};