<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>
<?php
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');
	$txtId   = strtoupper(trim($_POST['txtId']));
	$txtCod_tag= strtoupper(trim($_POST['txtCod_tag']));
	$Estado= strtoupper(trim($_POST['Estado']));
	$mensaje     = "";

	if($txtId==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: ID Cliente</div>";
	}elseif($txtCod_tag==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Codigo tag</div>";
	}else{
		
		$sqlx = "SELECT Cod_Tag FROM Tag WHERE Cod_Tag='".$txtCod_tag."'";
		$rsx  = mysql_query($sqlx,$conexion);
		if(mysql_num_rows($rsx)!=0){
			$mensaje = '<br/><div class="error-box round">'."Error: Tag En uso</div>";
		}else{
			$sql = "INSERT INTO tag (IdCliente,Cod_Tag,Estado) VALUES ('".$txtId."','".$txtCod_tag."','".$Estado."')";
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		}
		
	}
	echo $mensaje;
	


?>