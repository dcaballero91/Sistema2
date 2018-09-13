<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>
<?php
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');
	$txtID   = strtoupper(trim($_POST['txtID']));
	$txtCi= strtoupper(trim($_POST['txtCi']));
	$txtDireccion= strtoupper(trim($_POST['txtDireccion']));
	$mensaje     = "";
	if($txtID=="" ){
		$mensaje = '<br/><div class="information-box round">'."ID No puede estar vacio</div>";
	}
	else{
		$mensaje = '<br/><div class="information-box round">'."OK	</div>";

	}
	/*
	if($txtID==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: ID</div>";
	}elseif($txtNombre==""){
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
			$sql = "INSERT INTO usuarios(NOMBRE,APELLIDOS,RUT,DIRECCION,USUARIO,PASSWORD,TIPO_USUARIO) VALUES ('".$txtNombre."','".$txtApellidos."','".$txtRut."',";
			$sql = $sql."'".$txtDireccion."','".$txtRut."','".$txtRut."','".$TipoUsuario."')";
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		}
		
	}*/
	echo $mensaje;
	


?>