function alterarEmail() {
    var eValido = Bin.validarEmail($('#iemail').val());

    if (($('#iemail').val()).length <= 6) {
        return;
    }

    if (!eValido) {
        Bin.notifica("Email inválido, insira um email válido");
        return;
    }

    Bin.loader(1);
    $.post(Bin.endpoint + 'Dados/alterarEmail.php', { token: token, email: $('#iemail').val() }).done(function(response) {
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