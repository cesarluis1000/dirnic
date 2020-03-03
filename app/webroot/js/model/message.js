$("#MessageUserId").change(function(){
	var UserId = $("#MessageUserId option:selected" ).val();
	$.ajax({
        type: "GET",
        url: "../api/users/"+UserId+".json",
        dataType: "json",
        success: function (data) {             
             $("#MessageGrado").val(data.User.grado);
             $("#MessageUnidadPolicial").val(data.User.unidad_policial);
             $("#MessageCargo").val(data.User.cargo);             
        }
    })
})