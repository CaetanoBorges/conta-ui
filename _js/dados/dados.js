function pegaDados(token) {
    $.get("http://127.0.0.1/binga/conta-api/dados/dados.php", { objecto: token }).done(function(res) {

        var obj = JSON.parse(res);
        console.log(obj);

        $("#inome").val(obj['nome']);
        $("#iapelido").val(obj['apelido']);
        $("#Dia").val(obj['dia_nascimento']);
        $("#Ano").val(obj['ano_nascimento']);

        var meses = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"];

        $("#mes").html(meses);


    })
}