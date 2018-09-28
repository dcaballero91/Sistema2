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
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<tr><th>ID CLIENTE</th>
<th>NOMBRE APELLIDO</th>
<th>CI</th>
<th>TELEFONO</th>
<th>DIRECCION</th>
<th>ID TAG</th>
<th>TAG ESTADO</th>
<tr>
</thead>
<tbody id="tbody">
<?php
$contador = 0;
$sql      = "SELECT cliente.idCliente,persona.Nombre, persona.Apellido, persona.ci, persona.Telefono,cliente.Direccion, tag.Cod_Tag,tag.Estado FROM persona INNER JOIN cliente INNER JOIN tag where persona.idPersona = cliente.IdPersona and cliente.idCliente = tag.IdCliente ";
$rs       = mysql_query($sql,$conexion);
if(mysql_num_rows($rs)!=0){
	while($rows = mysql_fetch_assoc($rs)){
		
	echo '</td>';
		echo '<td>'.$rows['idCliente'].'</td>';
		echo '<td>'.$rows['Nombre'].' '.$rows['Apellido'].'</td>';
		echo '<td>'.$rows['ci'].'</td>';		
		echo '<td>'.$rows['Telefono'].'</td>';
		echo '<td>'.$rows['Direccion'].'</td>';
		echo '<td>'.$rows['Cod_Tag'].'</td>';
	

		echo '<td>';
		$estado=$rows['Estado'];
		
		if($estado==1){
		
			echo "ACTIVO";
		}
		elseif ($estado==2) {
			echo "INACTIVO";
			# code...
		}else{
			echo "Cargar Estado";
		}
		
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
