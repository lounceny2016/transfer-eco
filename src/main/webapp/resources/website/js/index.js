var index = {


    register: function (contextPath) {

        var form = document.getElementById('registrationForm');
        var formData = {};
        $.each(form, function(i, v){
            var input = $(v);
            formData[input.attr("name")] = input.val();
        });

        var url = contextPath+'/user/register';
        $.ajax({
            type: 'POST',
            url: url,
            data : formData,
            success: function(response){
                if (response.status){
                    $('#registration-message-div').after('<div id="alert-div" class="alert alert-success alert-dismissible"></div>');
                    $('#alert-div').append('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>');
                    $('#alert-div').append(response.message);
                } else {
                    $('#registration-message-div').after('<div id="alert-div" class="alert alert-danger alert-dismissible"></div>');
                    $('#alert-div').append('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>');
                    $('#alert-div').append(response.message);
                }
            }
        });

    },

    login: function (contextPath) {

        var form = document.getElementById('loginForm');
        var formData = {};
        $.each(form, function(i, v){
            var input = $(v);
            formData[input.attr("name")] = input.val();
        });

        var url = contextPath+'/user/login';
        console.log(formData);
        // $.ajax({
        //     type: 'POST',
        //     url: url,
        //     data : formData,
        //     success: function(response){
        //         if (response.status){
        //             $('#login-message-div').after('<div id="alert-div" class="alert alert-success alert-dismissible"></div>');
        //             $('#alert-div').append('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>');
        //             $('#alert-div').append(response.message);
        //         } else {
        //             $('#login-message-div').after('<div id="alert-div" class="alert alert-danger alert-dismissible"></div>');
        //             $('#alert-div').append('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>');
        //             $('#alert-div').append(response.message);
        //         }
        //     }
        // });

    }

}