<?php
	$Usuario		= "root";
	$Password		= "";
	$Servidor		= "localhost";
	$BaseDeDatos	= "callcenter";

	$conexion = mysql_connect($Servidor,$Usuario,$Password);
	mysql_select_db($BaseDeDatos,$conexion);
?>