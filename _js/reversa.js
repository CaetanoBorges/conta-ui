(function(rv) {
    //MODAL 
    rv(".rv-esconde-modal, .rv-modal-fundodetras").click(function() {
        rv(this).parents('.rv-modal').hide();
    })

    rv("[tipo='rv-aciona-modal']").click(function(event) {
        event.preventDefault();
        var qual = rv(this).attr('qual');
        rv(qual).show();
    })

    rv("[tipo='rv-aciona-collapse']").click(function(event) {
        event.preventDefault();
        var qual = rv(this).attr('qual');
        rv(qual).slideToggle();
    })







    //---------------------------------------------------------------------
    rv.fn.ola = function(opcoes) {

        //Opcções padrão
        var def = rv.extend({ nome: "Caetano" }, opcoes);

        return this.append('Ola ' + def.nome);
    }
})(rv)