<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>
<?php
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');
	$txtId		 = strtoupper($_POST['txtId']);
	$txtNombre   = strtoupper($_POST['txtNombre']);
	$txtApellidos= strtoupper($_POST['txtApellidos']);
	$txtCi		 = strtoupper($_POST['txtCi']);
	$txtDireccion= strtoupper($_POST['txtDireccion']);
	$txtTelefono= strtoupper($_POST['txtTelefono']);
	$mensaje     = "";
	iif($txtId==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Id</div>";
	}elseif($txtNombre==""){
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
			
			$sql = "UPDATE cliente SET Ci='".$txtCi."', Direccion='".$txtDireccion."', ";
			//$sql = $sql."DIRECCION='".$txtDireccion."' WHERE ID='".$_SESSION['USERCORE']."' ";
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";		
	}
	echo $mensaje;
	


?>