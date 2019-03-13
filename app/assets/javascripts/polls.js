$(function(){
    $('#save-response').click(function(e) {
        e.preventDefault();
        values = $("#form-register").serializeArray();
        $.ajax({
            type: "POST",
            url: "/polls/save_response",
            data: values,
            async: false,
            success: function (response) {

            }
        });
    });
});