<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>
<?php
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');
	$txtId   = strtoupper(trim($_POST['txtId']));
	$txtequipo= strtoupper(trim($_POST['txtequipo']));
	$mensaje     = "";

	if($txtId==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: ID Cliente</div>";
	}elseif($txtequipo==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio:  Nombre de Equipo</div>";
	}else{
		
		$sqlx = "SELECT nombre_equipo FROM equipos WHERE nombre_equipo='".$txtequipo."'";
		$rsx  = mysql_query($sqlx,$conexion);
		if(mysql_num_rows($rsx)!=0){
			$mensaje = '<br/><div class="error-box round">'."Error: Nombre de Equipo En uso</div>";
		}else{
			$sql = "INSERT INTO equipos (idbarrera_equipos,nombre_equipo) VALUES ('".$txtId."','".$txtequipo."')";
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		}
		
	}
	echo $mensaje;
	


?>