<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>
<?php
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');
	$txtNombre  = strtoupper(trim($_POST['txtNombre']));
	$txteje	= strtoupper(trim($_POST['txteje']));
	$mensaje    = "";
	if($txtNombre==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Nombre</div>";
	}elseif($txteje==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Costo</div>";
	}elseif(is_numeric($txteje)){
		$sql     = "SELECT  Idcat FROM categoria WHERE Nro_cat LIKE '%".$txtNombre."%'";
		$rs      = mysql_query($sql,$conexion);
		if(mysql_num_rows($rs)!=0){
			$mensaje = '<br/><div class="error-box round">Existe un Registro similar</div>';
		}else{
			$sql 	 = "INSERT INTO categoria(Nro_cat,Cantidad_eje) VALUES ('".$txtNombre."','".$txteje."')";
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		}
	}else{
		$mensaje = '<br/><div class="error-box round">'."Campo Costo debe de ser Numerico</div>";
	}
	echo $mensaje;
?>