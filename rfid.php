<?php
// Include confi.php
include_once('Conexion_Abrir.php');
$conexion = 5;
if($_SERVER['REQUEST_METHOD'] == "POST"){
    // Get data
    $name = isset($_POST['name']) ? mysql_real_escape_string($_POST['name']) : "";
    $code = isset($_POST['code']) ? mysql_real_escape_string($_POST['code']) : "";
   

    $sql = "SELECT transaccion.IdTransaccion, transaccion.Cantidad, tag.Cod_Tag, transaccion.Cantidad * planes.Costo AS total
 FROM transaccion INNER JOIN tag INNER JOIN vehiculo inner join planes inner join Cliente
where transaccion.idTag = tag.idTag and vehiculo.ID = planes.ID and tag.idCliente = Cliente.idCliente and  Cod_Tag= '$code'";
//echo $conexion;
$rs       = mysql_query($sql);

        while($rows = mysql_fetch_assoc($rs)){
                
       
                $estado=$rows['total'];

               // update transaccion set cantidad=cantidad+1 where Cod_Tag= '$code';
                
                if($estado<=300000){
                        $sql2 = "SELECT idTag FROM Tag WHERE Cod_Tag='$code';";
                        $rs2       = mysql_query($sql2);
                         while($rows2 = mysql_fetch_assoc($rs2)){
                             $idTag=$rows2['idTag'];
                             $sql3 ="UPDATE transaccion set cantidad=cantidad+1 where idTag= '$idTag';";
                             $rs3       = mysql_query($sql3);

                         }
                       
                        $json = array("status" => 1, "msg" => "SIN_ERROR");
                        

                }
                else {
                         $json = array("status" => 0, "msg" => "ERROR");
                 
                 } 

        }

}


   

/* Output header */
    header('Content-type: application/json');
    echo json_encode($json);