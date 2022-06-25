function alterarNascimentoGenero() {

    Bin.loader(1);
    $.post(Bin.endpoint + 'alterarNascimentoGenero.php', { token: token, genero: $('#igenero').val(), dia: $('#dia').val(), mes: $('#mes').val(), ano: $('#ano').val() }).done(function(response) {
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