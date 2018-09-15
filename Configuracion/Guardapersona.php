<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>
<?php
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');

	$txtNombre= strtoupper(trim($_POST['txtNombre']));
	$txtApellidos= strtoupper(trim($_POST['txtApellidos']));
	$txtCI = strtoupper(trim($_POST['txtCI']));
	$txtCORREO= strtoupper(trim($_POST['txtCORREO']));
	$txtTELEFONO = strtoupper(trim($_POST['txtTELEFONO']));
	$txtCI = strtoupper(trim($_POST['txtCI']));
	$mensaje     = "";
	if($txtNombre==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: NOMBRE</div>";
	}elseif($txtApellidos==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: APELLIDOS</div>";
	}elseif($txtCI==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: CI</div>";
	}elseif($txtCORREO==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: CORREO</div>";
	}else{
		$sqlx = "SELECT ci FROM persona WHERE ci='".$txtCI."'";
		$rsx  = mysql_query($sqlx,$conexion);
		if(mysql_num_rows($rsx)!=0){
			$mensaje = '<br/><div class="error-box round">'."Error: CI En uso</div>";
		}else{
			$sql = "INSERT INTO persona(Nombre,Apellido,Correo,Telefono,ci) VALUES ('".$txtNombre."','".$txtApellidos."','".$txtCORREO."','".$txtTELEFONO."','".$txtCI."')";
			echo $sql;
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		}
		
	}
	echo $mensaje;
	



?>