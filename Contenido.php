<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>	
<?php
	include('ScreenCatalogo_Seguridad.php');
	include('Conexion_Abrir.php');
	include('DataExtra.php');
	$estatus = PermisosUsuario($_SESSION['USERCORE'],1,$conexion);
	if($estatus==0){
		echo '<br/><div class="error-box round">Error: No Tiene Permisos de Acceso. Contacte el Administrador</div>';
		exit;
	}
	$Update	 = 0;
	if(isset($_GET['Update'])){
		$Update = $_GET['Update'];
	}
	if($Update!=0){
		//$update = "UPDATE CLIENTES SET VISIBLE=0 WHERE ID='".$Update."'";
		//mysql_query($update,$conexion);
	}
	$idUpdate = 0;
	/* SCRIPT MISMO USUARIO Y PASS EL SISTEMA TE PIDE ACTUALIZAR TU PASSWORD*/
	$sqx 	 = "SELECT * FROM usuarios where ID='".$_SESSION['USERCORE']."' limit 1";
	$rst 	 = mysql_query($sqx,$conexion); 
	$rowt	 = mysql_fetch_assoc($rst);
	$user	 = $rowt['USUARIO'];
	$pass	 = $rowt['PASSWORD'];
	
	if($user==$pass){
		header('Location:EditarPassword.php');
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
<link rel="shortcut icon" href="imagenes/logo.ico" />
<link rel="stylesheet" href="css/tablasmostrar.css">
<script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>
<script src="js/ajax.js" type="text/javascript"></script>
<title>SISTEMA</title>
<style>
	fieldset{-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px;}
	fieldset legend { background: #666; color:#fff; padding: 6px;  font-weight: bold; }
</style>
<script>

</script>
</head>
<body style="background-image: url(imagenes/Fondo.jpg);" onload="document.getElementById('loader').style.display='none';">
<tr><td colspan='8'><center><img src='imagenes/gif.gif'/></center></td></tr>
</body>
</html>
