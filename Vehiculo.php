<script src="js/ajax.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/Combobox.css">
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
	$estatus = PermisosUsuario($_SESSION['USERCORE'],3,$conexion);
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
<table id="table" border=0 cellpadding="0" cellspacing="0">
<thead>
<tr><th>ID CLIENTE</th>
<th>NOMBRE APELLIDO</th>
<th>CI</th>
<th>TELEFONO</th>
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
<?php
$contador = 0;
$sql      = "SELECT cliente.idCliente,persona.Nombre, persona.Apellido, persona.ci, persona.Telefono,cliente.Direccion, tag.Cod_Tag,tag.Estado,vehiculo.Marca, vehiculo.Modelo, vehiculo.Matricula, vehiculo.Chasis,planes.COSTO FROM persona INNER JOIN cliente INNER JOIN tag inner join vehiculo inner JOIN planes where persona.idPersona = cliente.IdPersona and cliente.idCliente = tag.IdCliente AND tag.IdTag = vehiculo.IdTag AND vehiculo.ID = planes.ID ";
$rs       = mysql_query($sql,$conexion);
if(mysql_num_rows($rs)!=0){
	while($rows = mysql_fetch_assoc($rs)){
		$tipo        = "Administrador";
		$contador	 = $contador + 1;
		$body		 = "odd";	
		
		echo '</td>';
			echo '<td>'.$rows['idCliente'].'</td>';
		echo '<td>'.$rows['Nombre'].' '.$rows['Apellido'].'</td>';
		echo '<td>'.$rows['ci'].'</td>';		
				echo '<td>'.$rows['Telefono'].'</td>';
		echo '<td>'.$rows['Direccion'].'</td>';
		echo '<td>'.$rows['Cod_Tag'].'</td>';
		
		$estado=$rows['Estado'];
		echo $estado;
		if($estado==1){
			
			echo "activo";
		}
		elseif ($estado==2) {
			echo "inactivo";
			# code...
		}else{
			echo "Cargar Estado";
		}
		echo '<td>'.$rows['Marca'].'</td>';
		echo '<td>'.$rows['Modelo'].'</td>';
		echo '<td>'.$rows['Matricula'].'</td>';
		echo '<td>'.$rows['Chasis'].'</td>';
		echo '<td>'.$rows['COSTO'].'</td>';
		echo '</tr>';
		
		
		
	}

}else{
	echo "<tr><td colspan='8'><center><img src='imagenes/error.png'/> No Hay Registros</center></td></tr>";
}

?>
</tbody>
</table>
</div>
</center>