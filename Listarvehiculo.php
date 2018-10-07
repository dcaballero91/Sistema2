<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>	
<?php
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],28,$conexion);
	if($estatus==0){
		echo '<br/><div class="error-box round">Error: No Tiene Permisos de Acceso. Contacte el Administrador</div>';
		exit;
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta content="IE=edge,requiresActiveX=true" http-equiv="X-UA-Compatible" />
<link rel="stylesheet" href="css/tablasmostrar.css">
<link rel="stylesheet" type="text/css" href="calendario/tcal.css" />
<script type="text/javascript" src="calendario/tcal.js"></script>
<title>SISTEMA</title>
<script>
function Permisos(id){
	window.location="ListarPermisos.php?a="+id;
}
</script>
<title>Listar persona</title>
	
	<style>
	.contenedor{margin:60px auto;width:960px;font-family:sans-serif;font-size:15px}
	table {width:100%;box-shadow:0 0 10px #ddd;text-align:left}
	th {padding:5px;background:#555;color:#fff}
	td {padding:5px;border:solid #ddd;border-width:0 0 1px;}
		.editable span{display:block;}
		.editable span:hover {background:url(imagenes/edit.png) 90% 50% no-repeat;cursor:pointer}
		
		td input{height:24px;width:200px;border:1px solid #ddd;padding:0 5px;margin:0;border-radius:6px;vertical-align:middle}
		a.enlace{display:inline-block;width:24px;height:24px;margin:0 0 0 5px;overflow:hidden;text-indent:-999em;vertical-align:middle}
			.guardar{background:url(imagenes/save.png) 0 0 no-repeat}
			.cancelar{background:url(imagenes/cancel.png) 0 0 no-repeat}
	
	.mensaje{display:block;text-align:center;margin:0 0 20px 0}
		.ok{display:block;padding:10px;text-align:center;background:green;color:#fff}
		.ko{display:block;padding:10px;text-align:center;background:red;color:#fff}
	</style>
</head>
<body style="background-image: url(imagenes/Fondo.jpg);" onload="document.getElementById('loader').style.display='none';">
<div id="loader" style="position:absolute; width:100%; height:100%; background-color:#ffffff; z-index:1005; text-align:center; padding-top:100px; font-size:20px; font-family:Arial; color:#000000;">
Cargando la Página...<br/><br/>
<img height="75" width="75" src="imagenes/loading.gif" />
</div>
<center>
<br/>
<br/>

		<div style="OVERFLOW:auto;WIDTH:1080px;HEIGHT:500px">
			<div class="mensaje"></div>
<table id="table" border=0 cellpadding="0" cellspacing="0" class="editinplace">
			<tr>
				<th>ID VEHICULO</th>
				<th>NOMBRE</th>
				<th>APELLIDO</th>
				<th>TELEFONO</th>
				<th>CI</th>
				<th>DIRECCION</th>
				<th>ID TAG</th>
				<th>TAG ESTADO</th>
				<th>MARCA</th>
				<th>MODELO</th>
				<th>MATRICULA</th>
				<th>CHASIS</th>
				<th>COSTO</th>
								
					</tr>
		</table>

	</div>
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script>
	$(document).ready(function() 
	{
		/* OBTENEMOS TABLA */
		$.ajax({
			type: "GET",
			url: "editVehiculo.php?tabla=1"
		})
		.done(function(json) {
			json = $.parseJSON(json)
			for(var i=0;i<json.length;i++)
			{
				$('.editinplace').append(
					"<tr><td class='id'>"+json[i].id+"</td><td class='Nombre'>"+json[i].nombre+"</td><td class='Apellido'>"+json[i].apellido+"</td><td class='Telefono'>"+json[i].telefono+"</td><td class='ci'>"+json[i].ci+"</td><td class='direccion'>"+json[i].direccion+"</td><td class='idtag'>"+json[i].idtag+"</td><td class='tagestado'>"+json[i].tagestado+"</td><td class='editable' data-campo='Marca'><span>"+json[i].marca+"</span></td><td class='editable' data-campo='Modelo'><span>"+json[i].modelo+"</span></td><td class='editable' data-campo='Matricula'><span>"+json[i].matricula+"</span></td><td class='editable' data-campo='Chasis'><span>"+json[i].chasis+"</span></td><td class='COSTO'>"+json[i].costo+"</td></tr>");
			}
		});
		
		var td,campo,valor,id;
		$(document).on("click","td.editable span",function(e)
		{
			e.preventDefault();
			$("td:not(.id)").removeClass("editable");
			td=$(this).closest("td");
			campo=$(this).closest("td").data("campo");
			valor=$(this).text();
			id=$(this).closest("tr").find(".id").text();
			td.text("").html("<input type='text' name='"+campo+"' value='"+valor+"'><a class='enlace guardar' href='#'>Guardar</a><a class='enlace cancelar' href='#'>Cancelar</a>");
		});
		
		$(document).on("click",".cancelar",function(e)
		{
			e.preventDefault();
			td.html("<span>"+valor+"</span>");
			$("td:not(.id)").addClass("editable");
		});
		
		$(document).on("click",".guardar",function(e)
		{
			$(".mensaje").html("<img src='imagenes/loading.gif'>");
			e.preventDefault();
			nuevovalor=$(this).closest("td").find("input").val();
			if(nuevovalor.trim()!="")
			{
				$.ajax({
					type: "POST",
					url: "editVehiculo.php",
					data: { campo: campo, valor: nuevovalor, id:id }
				})
				.done(function( msg ) {
					$(".mensaje").html(msg);
					td.html("<span>"+nuevovalor+"</span>");
					$("td:not(.id)").addClass("editable");
					setTimeout(function() {$('.ok,.ko').fadeOut('fast');}, 3000);
				});
			}
			else $(".mensaje").html("<p class='error-box round'>Debes ingresar un valor</p>");
		});
	});
	
	</script>
</center>
</body>
</html>
