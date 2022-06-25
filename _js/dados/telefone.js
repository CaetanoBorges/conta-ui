function alterarTelefone() {

    if (($('#itelefone').val()).length <= 8) {
        Bin.notifica("Número de telefone invalido, é muito curto");
        return;
    }

    Bin.loader(1);
    $.post(Bin.endpoint + 'alterarTelefone.php', { token: token, telefone: $('#itelefone').val() }).done(function(response) {
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