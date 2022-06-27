$(document).ready(function() {
    $('#antiga').passtrength({
        minChars: 6,
        passwordToggle: false,
        tooltip: false,
        textWeak: "Fraca",
        textMedium: "Media",
        textStrong: "Forte",
        textVeryStrong: "Muito forte",
        eyeImg: "eye.svg"
    });
    $('#nova').passtrength({
        minChars: 6,
        passwordToggle: true,
        tooltip: true,
        textWeak: "Fraca",
        textMedium: "Media",
        textStrong: "Forte",
        textVeryStrong: "Muito forte",
        eyeImg: "eye.svg"
    });
})

function alteraPalavraPasse() {
    Bin.loader(1);
    $.post(Bin.endpoint + 'Seguranca/alterarPalavraPasse.php', { token: token, nova: $('#nova').val(), antiga: $('#antiga').val() }).done(function(response) {
        console.log(response);
        var obj = JSON.parse(response);
        if (obj.ok) {
            Bin.notifica(obj.payload);
            location.reload();
        } else {
            Bin.notifica(obj.payload);
        }
    }).always(function(erro) {
        Bin.loader();
    })
}