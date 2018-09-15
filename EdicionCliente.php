<script src="js/ajax.js" type="text/javascript"></script>
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
	
	ajax.open("POST", "Configuracion/GuardaEdicionCliente.php",true);
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
	include('Conexion_Abrir.php');
	include('ScreenCatalogo_Seguridad.php');
	Cabecera("Editar Clientes");
	$sql 		= "SELECT * FROM cliente WHERE idCliente='".$_SESSION['USERCORE']."' limit 1";
	$rs  		= mysql_query($sql,$conexion);
	$row 		= mysql_fetch_assoc($rs);
	$sql2 		= "SELECT * FROM persona WHERE idpersona='".$_SESSION['USERCORE']."' limit 1";
	$rs2  		= mysql_query($sql2,$conexion);
	$row2 		= mysql_fetch_assoc($rs2);
	
	$boton		= "salvar";
	$javascript = "";
	echo '<div id="resultado"></div>';
	echo '<form name="clientes" id="clientes" method="post" action="" onsubmit="ValidarRequeridos(); return false">';
	echo '<center>';
	echo '<table>';
	echo '<tr>';
	echo '	<td><strong>Nombre:</strong></td>';
	echo '	<td><input type="text" name="txtNombre" value="'.$row2['Nombre'].'" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Apellidos:</strong></td>';
	echo '	<td><input type="text" name="txtApellidos" value="'.$row2['Apellido'].'" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	
		echo '<tr>';
	echo '	<td><strong>Telefono:</strong></td>';
	echo '	<td><input type="text" name="txtTelefono" disabled value="'.$row2['Telefono'].'" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Ci:</strong></td>';
	echo '	<td><input type="text" name="txtCi" disabled value="'.$row['Ci'].'" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	
	echo '<tr>';
	echo '	<td><strong>Direccion:</strong></td>';
	echo '	<td><input type="text" name="txtDireccion" value="'.$row['Direccion'].'" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	

	echo '</table>';
	echo '</center>';
	Pie($boton,$javascript);
	echo '</form>';
?>

