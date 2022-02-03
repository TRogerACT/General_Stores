   $(document).ready(function() {
    $('#loader').hide();
    $("#submit").on("click", function() {
    	$("#submit").prop("disabled", true);
    	var name = $("#name").val();
        var file = $("#image").val(); 
        var active = $("#active").val();
        var mrp_price = $("#mrp_price").val();
        var price = $("#price").val();
        var description = $("#description").val();
        var form = $("#form").serialize();
    	var data = new FormData($("#form")[0]);
    	data.append('name', name);
    	data.append('active', active);
    	data.append('mrp_price', mrp_price);
    	data.append('price', price);
    	data.append('description', description); 
    	//alert(data)
        $('#loader').show();
        if (name === "" || mrp_price ==="" || active === "" || price === "" || description === "") {
        	$("#submit").prop("disabled", false);
            $('#loader').hide();
            $("#name").css("border-color", "red");
            $("#active").css("border-color", "red");
            $("#mrp_price").css("border-color", "red");
            $("#price").css("border-color", "red");
            $("#description").css("border-color", "red");
            $("#error_name").html("Por favor complete el campo requerido.");
            $("#error_file").html("Por favor complete el campo requerido.");
            $("#error_active").html("Por favor complete el campo requerido.");
            $("#error_mrp_price").html("Por favor complete el campo requerido.");
            $("#error_price").html("Por favor complete el campo requerido.");
            $("#error_description").html("Por favor complete el campo requerido.");
        } else {
            $("#name").css("border-color", "");
            $("#status").css("border-color", "");
            $("#mrp_price").css("border-color", "");
            $("#price").css("border-color", "");
            $("#description").css("border-color", "");
            $('#error_name').css('opacity', 0);
            $('#error_file').css('opacity', 0);
            $('#error_active').css('opacity', 0);
            $('#error_price').css('opacity', 0);
            $('#error_mrp_price').css('opacity', 0);
            $('#error_description').css('opacity', 0);
                    $.ajax({
                        type: 'POST',
                        enctype: 'multipart/form-data',
                        data: data,
                        url: "/admin/product/editProduct", 
                        processData: false,
                        contentType: false,
                        cache: false,
                        success: function(data, statusText, xhr) {
                        console.log(xhr.status);
                        if(xhr.status == "200") {
                        	$('#loader').hide(); 
                        	$("#form")[0].reset();
                        	$('#success').css('display','block');
                        	$("#submit").prop("disabled", false);
                            $("#error").text("");
                            $("#success").text(data);
                            setTimeout(function(){
                                $('#success').slideUp('slow').fadeOut(function() {
                                    window.location.reload();
                                });
                           }, 3000);
                         }	   
                        },
                        error: function(e) {
                        	$('#loader').hide();
                        	$('#error').css('display','block');
                            $("#error").html("¡UPS! algo salió mal.");
                            setTimeout(function(){
                                $('#error').slideUp('slow').fadeOut(function() {
                                    window.location.reload();
                                });
                           }, 5000);
                        }
                    });
        }
            });
        });