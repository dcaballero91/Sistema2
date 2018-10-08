<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>	
<?php
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],25,$conexion);
	if($estatus==0){
		echo '<br/><div class="error-box round">Error: No Tiene Permisos de Acceso. Contacte el Administrador</div>';
		exit;
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://localhost:/api.php/{$ table}/{$ id}">

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
<center>
<br/>
<br/>
<div style="OVERFLOW:auto;WIDTH:800px;HEIGHT:500px">
<table id="table" border=0 cellpadding="0" cellspacing="0">
<thead>
<tr>
<tr><<th>ID</th>
	<th>CEDULA</th>
	<th>CANTIDAD</th>
	<th>COD. TAG</th>
	<th>MARCA</th>
	<th>MODELO</th>
	<th>MATRICULA</th>
	<th>COSTO UN.</th>
	<th>TOTAL</th>
<tr>
</thead>
<tbody id="tbody">
<?php
$contador = 0;
$sql      = "SELECT transaccion.IdTransaccion, persona.Nombre, persona.Apellido, Cliente.Ci, transaccion.Cantidad, tag.Cod_Tag, vehiculo.Marca,vehiculo.Modelo, vehiculo.Matricula,planes.Costo, transaccion.Cantidad * planes.Costo AS total FROM transaccion INNER JOIN tag INNER JOIN vehiculo inner join planes inner join Cliente INNER JOIN persona where transaccion.idTag = tag.idTag and vehiculo.ID = planes.ID and tag.idCliente = Cliente.idCliente and cliente.IdPersona = persona.idPersona ";
echo $conexion;
$rs       = mysql_query($sql,$conexion);
if(mysql_num_rows($rs)!=0){
	while($rows = mysql_fetch_assoc($rs)){
		
	echo '</td>';
		echo '<td>'.$rows['IdTransaccion'].'</td>';
		echo '<td>'.$rows['Nombre'].' '.$rows['Apellido'].'</td>';
		echo '<td>'.$rows['ci'].'</td>';		
		echo '<td>'.$rows['Cod_Tag'].'</td>';
		echo '<td>'.$rows['Marca'].'</td>';
		echo '<td>'.$rows['Modelo'].'</td>';
		echo '<td>'.$rows['Matricula'].'</td>';
		echo '<td>'.$rows['Cantidad'].'</td>';
		echo '<td>'.$rows['Costo'].'</td>';
		echo '<td>'.$rows['total'].'</td>';
	

		
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
</body>
</html>
