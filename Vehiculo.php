<script src="js/ajax.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/tablasmostrar.css">
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/> 
<script LANGUAGE="JavaScript">
function ValidarRequeridos(){
	
	divResultado 		= document.getElementById('resultado');
	var txtId			= document.clientes.txtId.value;
	var txtMarca		= document.clientes.txtMarca.value;
	var txtModelo	= document.clientes.txtModelo.value;
	var txtMatricula			= document.clientes.txtMatricula.value;
	var txtchasis	= document.clientes.txtchasis.value;
	var txtidplanes 	= document.clientes.txtidplanes.value;


	ajax = newAjax();	
	
	ajax.open("POST", "Configuracion/GuardaVehiculo.php",true);
	ajax.onreadystatechange=function() { 
		if (ajax.readyState==4) {
			//mostrar resultados en esta capa
			divResultado.innerHTML = ajax.responseText
		}
	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//enviando los valores
	ajax.send("&txtId="+txtId+"&txtMarca="+txtMarca+"&txtModelo="+txtModelo+"&txtMatricula="+txtMatricula+"&txtchasis="+txtchasis+"&txtidplanes="+txtidplanes);
	}



</script>
<?php
include('DibujaVentana.php');
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],26,$conexion);
	if($estatus==0){
		echo '<br/><div class="error-box round">Error: No Tiene Permisos de Acceso. Contacte el Administrador</div>';
		exit;
	}
	Cabecera("Cargar Nuevo Vehiculo");
	$boton		= "salvar";
	$javascript	= "";
	echo '<div id="resultado"></div>';
	echo '<form name="clientes" id="clientes" method="post" action="" onsubmit="ValidarRequeridos(); return false">';
	echo '<center>';
	echo '<table border=0>';
	echo '<tr><td colspan="2"><div id="resultado"></div></td></tr>';		
	echo '<tr>';
	echo '	<td><strong>Id Tag</strong></td>';
	echo '	<td><input type="text" name="txtId" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Marca:</strong></td>';
	echo '	<td><input type="text" name="txtMarca" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Modelo:</strong></td>';
	echo '	<td><input type="text" name="txtModelo" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Matricula:</strong></td>';
	echo '	<td><input type="text" name="txtMatricula" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Chasis:</strong></td>';
	echo '	<td><input type="text" name="txtchasis" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
echo '<tr>';
	echo '	<td><strong>Categoria:</strong></td>';
	echo '	<td>';
	
    echo '<div class="dropdown">';
    echo '<select name="txtidplanes" class="dropdown-select">';
    echo '<option value="0">Seleccione Opcion</option>';
	$sql = "SELECT * FROM planes ORDER BY DESCRIPCION";
	$rs  = mysql_query($sql,$conexion);
	if(mysql_num_rows($rs)!=0){
		while($row = mysql_fetch_assoc($rs)){
			 echo '<option value="'.$row['DESCRIPCION'].'">"'.$row['DESCRIPCION'].'"</option>';
			
				
			 
		}
	}
    echo '</select>';
    echo '</div>';
	echo '</table>';
	echo '</center>';
	Pie($boton,$javascript);
	echo '</form>';
?>

<center>
<br/>
<div style="OVERFLOW:auto;WIDTH:1200px;HEIGHT:300px">
<table id="table" border=0 cellpadding="0" cellspacing="0" class="editinplace">
<thead>
<tr><th>ID CLIENTE</th>
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
<tr>
</thead>
<tbody id="tbody">

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
					"<tr><td class='id'>"+json[i].id+"</td><td class='editable' data-campo='Nombre'><span>"+json[i].nombre+"</span></td><td class='editable' data-campo='Apellido'><span>"+json[i].apellido+"</span></td><td class='editable' data-campo='Telefono'><span>"+json[i].telefono+"</span></td><td class='editable' data-campo='ci'><span>"+json[i].ci+"</span></td><td class='editable' data-campo='direccion'><span>"+json[i].direccion+"</span></td><td class='id' data-campo='idtag'><span>"+json[i].idtag+"</span></td><td class='editable' data-campo='tagestado'><span>"+json[i].tagestado+"</span></td><td class='editable' data-campo='marca'><span>"+json[i].marca+"</span></td><td class='editable' data-campo='modelo'><span>"+json[i].modelo+"</span></td><td class='editable' data-campo='matricula'><span>"+json[i].matricula+"</span></td><td class='editable' data-campo='chasis'><span>"+json[i].chasis+"</span></td><td class='id' data-campo='costo'><span>"+json[i].costo+"</span></td></tr>");
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
			$(".mensaje").html("<img src='loading.gif'>");
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
</div>
</center>