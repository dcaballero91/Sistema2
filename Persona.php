<script src="js/ajax.js" type="text/javascript"></script>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<script LANGUAGE="JavaScript">
function ValidarRequeridos(){
	
	divResultado 	= document.getElementById('resultado');
	var txtNombre	= document.clientes.txtNombre.value;
	var txtApellidos= document.clientes.txtApellidos.value;
	var txtCORREO 	= document.clientes.txtCORREO.value;
	var txtTELEFONO = document.clientes.txtTELEFONO.value;
	var txtCI     	= document.clientes.txtCI.value;
	ajax = newAjax();	
	
	ajax.open("POST", "Configuracion/Guardapersona.php",true);
	ajax.onreadystatechange=function() {
		if (ajax.readyState==4) {
			//mostrar resultados en esta capa
			divResultado.innerHTML = ajax.responseText
		}
	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//enviando los valores
	ajax.send("&txtNombre="+txtNombre+"&txtApellidos="+txtApellidos+"&txtCORREO="+txtCORREO+"&txtTELEFONO="+txtTELEFONO+"&txtCI="+txtCI);
	
}
</script>
<?php
	include('DibujaVentana.php');
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],2,$conexion);
	if($estatus==0){
		echo '<br/><div class="error-box round">Error: No Tiene Permisos de Acceso. Contacte el Administrador</div>';
		exit;
	}
	Cabecera("Cargar Persona");
	$boton		= "salvar";
	$javascript = "";
	echo '<div id="resultado"></div>';
	echo '<form name="clientes" id="clientes" method="post" action="" onsubmit="ValidarRequeridos(); return false">';
	echo '<center>';
	echo '<table>';
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
	echo '	<td><input type="text" name="txtCI" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td align="left"><strong>CORREO:</strong></td>';
	echo '	<td><input type="text" name="txtCORREO" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Telefono:</strong></td>';
	echo '	<td><input type="text" name="txtTELEFONO" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
 	echo '</table>';
	echo '</center>';
	Pie($boton,$javascript);
	echo '</form>';
?>

