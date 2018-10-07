<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="dist/jquery.tabledit.js"></script>
<script type="text/javascript" src="custom_table_edit.js"></script>
<script src="js/ajax.js" type="text/javascript"></script>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<script LANGUAGE="JavaScript">
function ValidarRequeridos(){
	
	divResultado 		= document.getElementById('resultado');
	var txtId 		= document.clientes.txtId.value;
	var txtequipo	= document.clientes.txtequipo.value;
	ajax = newAjax();	
	
	ajax.open("POST", "Configuracion/GuardarEquipo.php",true);
	ajax.onreadystatechange=function() {
		if (ajax.readyState==3) {
			//mostrar resultados en esta capa
			divResultado.innerHTML = ajax.responseText
		}
	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//enviando los valores
	ajax.send(	"&txtId="+txtId+"&txtequipo="+txtequipo);
	
}
</script>
<?php
	include('DibujaVentana.php');
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],29,$conexion);
	if($estatus==0){
		echo '<br/><div class="error-box round">Error: No Tiene Permisos de Acceso. Contacte el Administrador</div>';
		exit;
	}
	Cabecera("Cargar Equipo");
	$boton		= "Salvar";
	$javascript = "";

	echo '<div id="resultado"></div>';
	echo '<form name="clientes" id="clientes" method="post" action="" onsubmit="ValidarRequeridos(); return false">';
	echo '<center>';
	echo '<table>';
	echo '	<td><strong>Distrito:</strong></td>';
	echo '	<td><input type="text" name="txtId" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Nombre de equipo:</strong></td>';
	echo '	<td><input type="text" name="txtequipo" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';

	
	echo '</td>';


	echo '<tr>';
	echo '</select>';
	echo '</td>';
	echo '</tr>';
	echo '</table>';
	echo '</center>';
Pie($boton,$javascript);
	echo '</form>';
?>

