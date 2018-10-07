<?php
// Include confi.php


if($_SERVER['REQUEST_METHOD'] == "POST"){
    // Get data
       
        $json = array("status" => 1, "msg" => "SIN_ERROR");
    }
/* Output header */
    header('Content-type: application/json');
    echo json_encode($json);
