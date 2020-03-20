$("#MessageUserId").change(function(){
	var base   = $('base').attr('href');
	var UserId = $("#MessageUserId option:selected" ).val();
	$.ajax({
        type: "GET",
        url: base+"api/users/"+UserId+".json",
        dataType: "json",
        success: function (data) {             
             $("#MessageGrado").val(data.User.Grado.nombre);
             $("#MessageUnidadPolicial").val(data.User.Unidad.nombre);
             $("#MessageCargo").val(data.User.Cargo.nombre);             
        }
    })
})