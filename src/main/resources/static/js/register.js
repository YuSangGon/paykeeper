$(function() {

    $('input[name="role"]').change(function() {
        if($('#employee').checked) {
            $('#showSelectByRole').toggleClass('d-none');
        } else {
            $('#showSelectByRole').toggleClass('d-none');
        }
    })


    $('#isDuplicated').click(function() {

        const username = $('#username').val();

        if(username === '') {
            return ;
        }

        $.ajax({
            url : "/user/isDuplicated/" + username,
            method: "GET",
        }).done(response => {
            if(response === '1') { // 중복된 아이디
                $('#impossibleID').removeClass('d-none');
            } else {  // 사용 가능 아이디
                $('#possibleID').removeClass('d-none');
            }
        })

    })

    $('#username').off().on("propertychange change keyup paste input",function() {
        $('#impossibleID').addClass('d-none');
        $('#possibleID').addClass('d-none');
    })

    $('#repassword, #password').off().on("propertychange change keyup paste input",function() {

        const password = $('#password').val();
        const repassword = $('#repassword').val();

        if(password === '') {
            $('#isEqual').addClass('d-none');
            $('#isNotEqual').addClass('d-none');
            return ;
        }

        if(password === repassword) {
            $('#isEqual').removeClass('d-none');
            $('#isNotEqual').addClass('d-none');
        } else {
            $('#isEqual').addClass('d-none');
            $('#isNotEqual').removeClass('d-none');
        }
    })

    $('checkedEmail').click(function() {
        const email = $('#email').val();

        if(email === '') return ;

        // 인증 코드 전송


        $('#inputCodeForEmail').removeClass('d-none');
    })

})