function pegaDados(token) {
    $.get("http://127.0.0.1/binga/conta-api/dados/dados.php", { objecto: token }).done(function(res) {
        console.log(res);
    })
}