var index = {


    register: function () {

        var form = document.getElementById('registrationForm');
        var formData = {};
        $.each(form, function(i, v){
            var input = $(v);
            formData[input.attr("name")] = input.val();
        });

        var url = '/user/register';
        $.ajax({
            type: 'POST',
            url: url,
            data : formData,
            success: function(response){
                if (response.status){
                    $('#success-message').after('<div id="company-success-msg" class="alert alert-success alert-dismissible"></div>');
                    $('#company-success-msg').append('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>');
                    $('#company-success-msg').append(response.message);
                } else {
                }
            }
        });

    }

}