<link href="../css/Estilo.css" rel="stylesheet" type="text/css"/>
<?php
	include('../ScreenCatalogo_Seguridad.php');
	include('../Conexion_Abrir.php');
	$txtId		 = strtoupper($_POST['txtId']);
	$txtMarca   = strtoupper($_POST['txtMarca']);
	$txtModelo= strtoupper($_POST['txtModelo']);
	$txtMatricula		 = strtoupper($_POST['txtMatricula']);
	$txtchasis= strtoupper($_POST['txtchasis']);
	$txtidplanes= strtoupper($_POST['txtidplanes']);
	$mensaje     = "";
	if($txtId==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Id Tag</div>";
	}elseif($txtMarca==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Marca</div>";
	}elseif($txtModelo==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Modelo</div>";
	}elseif($txtMatricula==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Matricula</div>";
	}elseif($txtchasis==""){
		$mensaje = '<br/><div class="error-box round">'."Campo Obligatorio: Chasis</div>";
	}else{
		$sqlx = "SELECT IdTag FROM Vehiculo WHERE IdTag='".$txtId."'";
        $contador = 0;
		$sqlx1 = "SELECT ID FROM planes WHERE DESCRIPCION='".$txtidplanes."'";
		echo $sqlx1;
		$rsx1  = mysql_query($sqlx1,$conexion);
		if(mysql_num_rows($rsx1)!=0){
		while($rows = mysql_fetch_assoc($rsx1)){
		$tipo        = "Administrador";
		$contador	 = $contador + 1;
		$body		 = "odd";	
		$idaux=$rows['ID'];
		echo $idaux;
		//echo '<tr>';
		//echo '<td>'.$rows['ID'].'</td>';
		//echo '</tr>';
		}

}else{
	echo "<tr><td colspan='8'><center><img src='imagenes/error.png'/> No Hay Registros</center></td></tr>";
}
		$rsx  = mysql_query($sqlx,$conexion);
		if(mysql_num_rows($rsx)!=0){
			$mensaje = '<br/><div class="error-box round">'."Error: Tag En uso</div>";
		}else{
			$sql 	= "INSERT INTO vehiculo(IdTag,Marca,Modelo,Matricula,Chasis,ID) VALUES ('".$txtId."','".$txtMarca."','".$txtModelo."','".$txtMatricula."','".$txtchasis."','".$idaux."')";
			
			mysql_query($sql,$conexion);
			$mensaje = '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		}
	}
	echo $mensaje;

?>