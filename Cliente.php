<script src="js/ajax.js" type="text/javascript"></script>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<script LANGUAGE="JavaScript">
function ValidarRequeridos(){
	
	divResultado 		= document.getElementById('resultado');
	var txtID 		= document.clientes.txtID.value;
	var txtCi 		= document.clientes.txtCi.value;
	var txtDireccion 	= document.clientes.txtDireccion.value;
	
	ajax = newAjax();	
	
	ajax.open("POST", "Configuracion/GuardarCliente.php",true);
	ajax.onreadystatechange=function() {
		if (ajax.readyState==4) {
			//mostrar resultados en esta capa
			divResultado.innerHTML = ajax.responseText
		}
	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//enviando los valores
	ajax.send("txtID="+txtID+"&txtCi="+txtCi+"&txtDireccion="+txtDireccion);
	
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
	Cabecera("Registrar Cliente");
	$boton		= "salvar";
	$javascript = "";
	echo '<div id="resultado"></div>';
	echo '<form name="clientes" id="clientes" method="post" action="" onsubmit="ValidarRequeridos(); return false">';
	echo '<center>';
	echo '<table>';
	echo '<tr>';
	echo '	<td><strong>ID:</strong></td>';
	echo '	<td><input type="text" name="txtID" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Ci:</strong></td>';
	echo '	<td><input type="text" name="txtCi" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	
	echo '	<td><strong>Direccion:</strong></td>';
	echo '	<td><input type="text" name="txtDireccion" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	
	echo '</table>';
	echo '</center>';
	Pie($boton,$javascript);
	echo '</form>';
?>
