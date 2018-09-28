<?php
$dbhost="localhost";
$dbname="callcenter";
$dbuser="root";
$dbpass="";
$db = new mysqli($dbhost,$dbuser,$dbpass,$dbname);

if (isset($_POST) && count($_POST)>0)
{
	if ($db->connect_errno) 
	{
		die ("<span class='ko'>Fallo al conectar a MySQL: (" . $db->connect_errno . ") " . $db->connect_error."</span>");
	}
	else
	{
		$query=$db->query("update persona set ".$_POST["campo"]."='".$_POST["valor"]."' where idPersona='".intval($_POST["id"])."' limit 1");
		if ($query) echo '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		else echo "<span class='error-box round'>".$db->error."</span>";
	}
}

if (isset($_GET) && count($_GET)>0)
{
	if ($db->connect_errno) 
	{
		die ("<span class='ko'>Fallo al conectar a MySQL: (" . $db->connect_errno . ") " . $db->connect_error."</span>");
	}
	else
	{
		$query=$db->query("select * from persona order by idPersona asc");
		$datos=array();
		while ($usuarios=$query->fetch_array())
		{
			$datos[]=array(	"id"=>$usuarios["idPersona"],
							"nombre"=>$usuarios["Nombre"],
							"apellido"=>$usuarios["Apellido"],
							"correo"=>$usuarios["Correo"],
							"telefono"=>$usuarios["Telefono"],
							"ci"=>$usuarios["ci"]
			);
		}
		echo json_encode($datos);
	}
}
?>