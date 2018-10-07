<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>	
<?php
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],30,$conexion);
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
<tr><th>ID DISTRITO</th>
<th>DISTRITO</th>
<th>ID EQUIPO</th>
<th>EQUIPO</th>
<tr>
</thead>
<tbody id="tbody">
<?php
$contador = 0;
$sql      = "SELECT  distrito.IdDistrito, distrito.Nombre, barrera.Nro_Barrera, equipos.nombre_equipo
FROM barrera INNER JOIN distrito INNER JOIN equipos ";

$rs       = mysql_query($sql,$conexion);
if(mysql_num_rows($rs)!=0){
	while($rows = mysql_fetch_assoc($rs)){
		
	echo '</td>';
		echo '<td>'.$rows['IdDistrito'].'</td>';
		echo '<td>'.$rows['Nombre'].'</td>';
		echo '<td>'.$rows['Nro_Barrera'].'</td>';		
		echo '<td>'.$rows['nombre_equipo'].'</td>';
		

		
		
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