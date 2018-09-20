<script src="js/ajax.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/Combobox.css">
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>

<script LANGUAGE="JavaScript">
function ValidarRequeridos(){
	
	divResultado 		= document.getElementById('resultado');
	var txtId			= document.clientes.txtId.value;
	var txtNombre		= document.clientes.txtNombre.value;
	var txtApellidos	= document.clientes.txtApellidos.value;
	var txtCi 			= document.clientes.txtCi.value;
	var txtDireccion 	= document.clientes.txtDireccion.value;
	var txtTelefono    	= document.clientes.txtTelefono.value;
	ajax = newAjax();	
	
	ajax.open("POST", "Configuracion/GuardaClientes.php",true);
	ajax.onreadystatechange=function() {
		if (ajax.readyState==4) {
			//mostrar resultados en esta capa
			divResultado.innerHTML = ajax.responseText
		}
	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//enviando los valores
	ajax.send("&txtId="+txtId+"&txtNombre="+txtNombre+"&txtApellidos="+txtApellidos+"&txtCi="+txtCi+"&txtDireccion="+txtDireccion+"&txtTelefono="+txtTelefono);
	}



</script>
<?php
include('DibujaVentana.php');
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],20,$conexion);
	if($estatus==0){
		echo '<br/><div class="error-box round">Error: No Tiene Permisos de Acceso. Contacte el Administrador</div>';
		exit;
	}
	Cabecera("Cargar Nuevo Cliente");
	$boton		= "salvar";
	$javascript	= "";
	echo '<div id="resultado"></div>';
	echo '<form name="clientes" id="clientes" method="post" action="" onsubmit="ValidarRequeridos(); return false">';
	echo '<center>';
	echo '<table border=0>';
	echo '<tr><td colspan="2"><div id="resultado"></div></td></tr>';		
	echo '<tr>';
	echo '	<td><strong>Id</strong></td>';
	echo '	<td><input type="text" name="txtId" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Nombre:</strong></td>';
	echo '	<td><input type="text" name="txtNombre" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Apellidos:</strong></td>';
	echo '	<td><input type="text" name="txtApellidos" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>CI:</strong></td>';
	echo '	<td><input type="text" name="txtCi" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Direccion:</strong></td>';
	echo '	<td><input type="text" name="txtDireccion" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td align="left"><strong>Telefono:</strong></td>';
	echo '	<td><input type="text" name="txtTelefono" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '</table>';
	echo '</center>';
	Pie($boton,$javascript);
	echo '</form>';
?>
