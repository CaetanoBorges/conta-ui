(function(rv) {
    rv.fn.ola = function(opcoes) {

        //Opcções padrão
        var def = rv.extend({ nome: "Caetano" }, opcoes);

        return this.append('Ola ' + def.nome);
    }
}(reversa))