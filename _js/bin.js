class Bin {
    constructor() {

    }
    static endpoint = "http://127.0.0.1/binga/conta-api/";

    static loader(binario = false) {
        if (binario) {
            $(".load").show();
        } else {
            $(".load").hide();
        }

    }

    static notifica(qual) {
        var html = new debliwuinotificacao();
        html.sms(qual);
        $("body").append(html);
    }

    static validarEmail(inputText) {
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if (inputText.match(mailformat)) {
            return true;
        } else {
            return false;
        }
    }
}