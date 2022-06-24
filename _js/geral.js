function _loader(binario = false) {
    if (binario) {
        $(".load").show();
    } else {
        $(".load").hide();
    }

}

function notifica(qual) {
    var html = new debliwuinotificacao();
    html.sms(qual);
    $("body").append(html);
}