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
		$query=$db->query("update vehiculo set ".$_POST["campo"]."='".$_POST["valor"]."' where IdVehiculo='".intval($_POST["id"])."' limit 1");
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
		$query=$db->query("	SELECT vehiculo.idVehiculo, persona.Nombre,persona.Apellido,persona.Telefono,cliente.ci,cliente.Direccion,tag.Cod_Tag, tag.Estado,vehiculo.Marca,vehiculo.Modelo, vehiculo.Matricula, vehiculo.Chasis, planes.COSTO
	from persona inner join cliente inner join tag inner join vehiculo inner join planes 
where persona.idPersona = cliente.IdPersona and cliente.idCliente = tag.IdCliente and tag.IdTag = vehiculo.IdTag and vehiculo.ID = planes.ID order by idVehiculo asc");
		$query=$db->query("	SELECT  barrera.IdBarrera, distrito.Nombre, barrera.Nro_Barrera equipos.nombre_equipo 

FROM barrera INNER JOIN distrito INNER JOIN equipos order by IdDistrito asc");

		$datos=array();
		while ($vehiculo=$query->fetch_array())
		{
			$datos[]=array(	"id"=>$vehiculo["idVehiculo"],
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