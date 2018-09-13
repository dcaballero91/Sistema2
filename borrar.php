<?php 
include 'conexion.php';

$id =$_REQUEST['idcat'];

$del = $con -> query("delete from categoria WHERE idcat = '$id'");

if ($del) {
		 echo "<scrip>
location.href='categoria.php'
</scrip>";
	}else{

echo "<scrip>
alert('El registro no pudo ser eliminado')
location.href='categoria.php'
</scrip>"

	}
?>