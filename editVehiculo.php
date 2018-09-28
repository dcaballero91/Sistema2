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
		$query=$db->query("select * from lstvehiculos order by idCliente asc");
		$datos=array();
		while ($vehiculo=$query->fetch_array())
		{
			$datos[]=array(	"id"=>$vehiculo["idCliente"],
							"nombre"=>$vehiculo["Nombre"],
							"apellido"=>$vehiculo["Apellido"],
							"telefono"=>$vehiculo["Telefono"],
							"ci"=>$vehiculo["ci"],
							"direccion"=>$vehiculo["Direccion"],
							"idtag"=>$vehiculo["Cod_Tag"],
							"tagestado"=>$vehiculo["Estado"],
							"marca"=>$vehiculo["Marca"],
							"modelo"=>$vehiculo["Modelo"],
							"matricula"=>$vehiculo["Matricula"],
							"chasis"=>$vehiculo["Chasis"],
							"costo"=>$vehiculo["COSTO"],
			);
		}
		echo json_encode($datos);
	}
}
?>