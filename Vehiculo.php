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

