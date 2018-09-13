<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>

<?php
	date_default_timezone_set('America/Mexico_City');
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');
	$txtId		 = strtoupper($_POST['txtId']);
	$txtNombre   = strtoupper($_POST['txtNombre']);
	$txtApellidos= strtoupper($_POST['txtApellidos']);
	$txtCi		 = strtoupper($_POST['txtCi']);
	$txtDireccion= strtoupper($_POST['txtDireccion']);
	$txtTelefono= strtoupper($_POST['txtTelefono']);
	$mensaje     = "";
	if($txtId==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Id</div>";
	}elseif($txtApellidos=="")
	if($txtNombre==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Nombre</div>";
	}elseif($txtApellidos==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Apellidos</div>";
	}elseif($txtCi==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: CI</div>";
	}elseif($txtDireccion==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Direccion</div>";
	}elseif($txtTelefono==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Telefono</div>";
	}else{
		$sqlx = "SELECT idCliente FROM cliente WHERE Ci='".$txtCi."'";
		$rsx  = mysql_query($sqlx,$conexion);
		if(mysql_num_rows($rsx)!=0){
			$mensaje = '<br/><div class="error-box round">'."Error: CI En uso</div>";
		}else{
			
			$sql 	= "INSERT INTO cliente (idPersona,Ci,Direccion) VALUES ('".$txtId."','".$txtCi."','".$txtDireccion."',";
			echo $sql;
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		}
	}
	echo $mensaje;

?>