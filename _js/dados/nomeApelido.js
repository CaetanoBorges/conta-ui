function alterarNomeApelido() {
    if (($('#inome').val()).length <= 3 || ($('#iapelido').val()).length <= 3) {
        return;
    }

    Bin.loader(1);
    $.post(Bin.endpoint + 'Dados/alterarNomeApelido.php', { token: token, nome: $('#inome').val(), apelido: $('#iapelido').val() }).done(function(response) {
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