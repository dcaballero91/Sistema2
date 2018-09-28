<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="dist/jquery.tabledit.js"></script>
<script type="text/javascript" src="custom_table_edit.js"></script>
<script src="js/ajax.js" type="text/javascript"></script>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<script LANGUAGE="JavaScript">
function ValidarRequeridos(){
	
	divResultado 		= document.getElementById('resultado');
	var txtId 		= document.clientes.txtId.value;
	var txtCod_tag	= document.clientes.txtCod_tag.value;
	var Estado 			= document.clientes.Estado.value;
		ajax = newAjax();	
	
	ajax.open("POST", "Configuracion/GuardaTag.php",true);
	ajax.onreadystatechange=function() {
		if (ajax.readyState==3) {
			//mostrar resultados en esta capa
			divResultado.innerHTML = ajax.responseText
		}
	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//enviando los valores
	ajax.send(	"&txtId="+txtId+"&txtCod_tag="+txtCod_tag+"&Estado="+Estado);
	
}
</script>
<?php
	include('DibujaVentana2.php');
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],25,$conexion);
	if($estatus==0){
		echo '<br/><div class="error-box round">Error: No Tiene Permisos de Acceso. Contacte el Administrador</div>';
		exit;
	}
	Cabecera("Cargar Tag");
	$boton		= "Salvar";
	$javascript = "";
	$boton2		= "Buscar";
	$javascript2 = "";
	echo '<div id="resultado"></div>';
	echo '<form name="clientes" id="clientes" method="post" action="" onsubmit="ValidarRequeridos(); return false">';
	echo '<center>';
	echo '<table>';
	echo '	<td><strong>Id Cliente:</strong></td>';
	echo '	<td><input type="text" name="txtId" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';
	echo '<tr>';
	echo '	<td><strong>Codigo Tag:</strong></td>';
	echo '	<td><input type="text" name="txtCod_tag" class="CajaTexto" size="40" x-webkit-speech="true"/></td>';
	echo '</tr>';

	echo '	<td><strong>Estado:</strong></td>';	
	echo '	<td>';
	echo '<select name="Estado">';
	echo '<option value="1">Activo</option>';
	echo '<option value="2">Inactivo</option>';
	echo '</select>';
	echo '</td>';


	echo '<tr>';
	echo '</select>';
	echo '</td>';
	echo '</tr>';
	echo '</table>';
	echo '</center>';
Pie($boton,$javascript,$boton2,$javascript2);
	echo '</form>';
?>

