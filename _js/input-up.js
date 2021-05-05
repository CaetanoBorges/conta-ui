var inputs = document.querySelectorAll('.inputfile');
Array.prototype.forEach.call(inputs, function(input) {
    var label = document.querySelector('.span-up');
    var labelVal = label.innerHTML;
    input.addEventListener('change', function(e) {
        var fileName = '';
        if (this.files && this.files.length > 1) {
            fileName = (this.getAttribute('data-multiple-caption') || '')
                .replace('{count}', this.files.length);
            console.log(e.target.value);
        } else {
            var r = "\'"
            fileName = e.target.value.split("\'").pop();
            console.log(fileName);
            if (fileName) {
                label.innerHTML = fileName;
            } else {
                label.innerHTML = labelVal;
            }
        }
    });
});