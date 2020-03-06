$("#MessageUserId").change(function(){
	var base   = $('base').attr('href');
	var UserId = $("#MessageUserId option:selected" ).val();
	$.ajax({
        type: "GET",
        url: base+"api/users/"+UserId+".json",
        dataType: "json",
        success: function (data) {             
             $("#MessageGrado").val(data.User.grado);
             $("#MessageUnidadPolicial").val(data.User.unidad_policial);
             $("#MessageCargo").val(data.User.cargo);             
        }
    })
})