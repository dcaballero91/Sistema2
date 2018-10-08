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
		$query=$db->query("update transaccion set ".$_POST["campo"]."='".$_POST["valor"]."' where IdTransaccion='".intval($_POST["id"])."' limit 1");
		if ($query) 
			echo '<br/><div class="information-box round">'."Registros Guardados Correctamente</div>";
		else 
			echo "<span class='error-box round'>".$db->error."</span>";

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
		$query=$db->query("SELECT transaccion.IdTransaccion, Cliente.Ci, transaccion.Cantidad, tag.Cod_Tag, vehiculo.Marca,vehiculo.Modelo, vehiculo.Matricula,planes.Costo, transaccion.Cantidad * planes.Costo AS total
 FROM transaccion INNER JOIN tag INNER JOIN vehiculo inner join planes inner join Cliente
where transaccion.idTag = tag.idTag and vehiculo.ID = planes.ID and tag.idCliente = Cliente.idCliente order by Ci asc");
		$datos=array();
		while ($usuarios=$query->fetch_array())
		{
			$datos[]=array(	"id"=>$usuarios["IdTransaccion"],
							"cantidad"=>$usuarios["Cantidad"],
							"ci"=>$usuarios["Ci"],
							"cod_tag"=>$usuarios["Cod_Tag"],
							"marca"=>$usuarios["Marca"],
							"modelo"=>$usuarios["Modelo"],
							"matricula"=>$usuarios["Matricula"],
							"costo"=>$usuarios["Costo"],
							"total"=>$usuarios["total"]
							
			);
		}
		echo json_encode($datos);
	}
}
?>