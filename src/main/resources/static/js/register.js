$(function() {

    $('input[name="role"]').change(function() {
        if($('#employee').checked) {
            $('#showSelectByRole').toggleClass('d-none');
        } else {
            $('#showSelectByRole').toggleClass('d-none');
        }
    })

})