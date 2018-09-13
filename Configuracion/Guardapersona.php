<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>
<?php
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');

	$txtNombre= strtoupper(trim($_POST['txtNombre']));
	$txtApellidos= strtoupper(trim($_POST['txtApellidos']));
	$txtCORREO= strtoupper(trim($_POST['txtCORREO']));
	$txtTELEFONO = strtoupper(trim($_POST['txtTELEFONO']));
	$mensaje     = "";
	
	if($txtNombre==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: NOMBRE</div>";
	}elseif($txtApellidos==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: APELLIDOS</div>";
	}elseif($txtCORREO==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: CORREO</div>";
	}else{
		
		$sqlx = "SELECT ID FROM persona WHERE id='".$txtID."'";
		$rsx  = mysql_query($sqlx,$conexion);
		if(mysql_num_rows($rsx)!=0){
			$mensaje = '<br/><div class="error-box round">'."Error: ID En uso</div>";
		}else{
			$sql = "INSERT INTO usuarios(NOMBRE,APELLIDOS,RUT,DIRECCION,USUARIO,PASSWORD,TIPO_USUARIO) VALUES ('".$txtNombre."','".$txtApellidos."','".$txtCI."',";
			$sql = $sql."'".$txtDireccion."','".$txtCI."','".$txtCI."','".$TipoUsuario."')";
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		}
		
	}
	echo $mensaje;
	


?>