<?php
$dbhost="localhost";
$dbname="callcenter";
$dbuser="root";
$dbpass="pedro";
$db = new mysqli($dbhost,$dbuser,$dbpass,$dbname);

if (isset($_POST) && count($_POST)>0)
{
	if ($db->connect_errno) 
	{
		die ("<span class='ko'>Fallo al conectar a MySQL: (" . $db->connect_errno . ") " . $db->connect_error."</span>");
	}
	else
	{
		$query=$db->query("update cliente set ".$_POST["campo"]."='".$_POST["valor"]."' where idCliente='".intval($_POST["id"])."' limit 1");
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
		$query=$db->query("SELECT cliente.idCliente, persona.Nombre, persona.Apellido, cliente.ci,  cliente.Direccion, persona.Telefono FROM persona  JOIN cliente where persona.idPersona = cliente.IdPersona order by idCliente asc");
		$datos=array();
		while ($usuarios=$query->fetch_array())
		{
			$datos[]=array(	"id"=>$usuarios["idCliente"],
							"nombre"=>$usuarios["Nombre"],
							"apellido"=>$usuarios["Apellido"],
							"ci"=>$usuarios["ci"],
							"direccion"=>$usuarios["Direccion"],
							"telefono"=>$usuarios["Telefono"],
							
			);
		}
		echo json_encode($datos);
	}
}
?>