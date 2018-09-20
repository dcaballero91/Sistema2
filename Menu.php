<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<html>
<head>
	<title>: Menu :</title>
	<script src="js/jquery-1.9.0.min.js"></script>
	<link href="css/MetroMenu.css" rel="stylesheet" type="text/css" media="screen" />
	<script src="js/MetroMenu.js"></script>
</head>
<style>
select
{
    BORDER-RIGHT : #CCCCCC 1px solid;
    BORDER-TOP   : #CCCCCC 1px solid;
    BORDER-BOTTOM: #CCCCCC 1px solid;
    BORDER-LEFT  : #CCCCCC 1px solid;
    BACKGROUND-COLOR: #FFFFFF;
    FONT-WEIGHT: normal;
    FONT-SIZE  : 15px;
    COLOR: #000000;
    LINE-HEIGHT: normal;
	font-family: "Trebuchet MS", Helvetica, sans-serif;
    TEXT-DECORATION: none;
}
</style>
<body topmargin="0" leftmargin="0" style="margin:0px">

	<script type="text/javascript">
	$(document).ready(function(){
		$.MetroMenu( 
			{
				backicon: "imagenes/back.png",
				animation: "fadeInDown",
				position: "top",
				withtooltip: false,
				closeonclick: false,
				escclose: false,
				color1: "#6E6E6E",
				color2: "#666666",			
				items:[
							
								{
								name: "Inicio", 
								icon: "imagenes/inicio.png",
								items:[
																]
								}		
								,
								

								{
								name: "Mis Datos", 
								icon: "imagenes/ppersonal.png",
								items:[
																{	
										name: "Agregar Persona",
										icon: "imagenes/personales.png",
										items:[
																	{	
										name: "Persona",
										icon: "imagenes/invitado.png",
										items:[
																				]
										}	
										,							{	
										name: "Listar Persona",
										icon: "imagenes/listar.png",
										items:[		]		}	
										,]
										}	,
	
																	{	
										name: "Nuevo Cliente",
										icon: "imagenes/invitado.png",
										items:[
																			{	
										name: "Cliente",
										icon: "imagenes/invitado.png",
																			items:[
																				]
										}	
										,						{	
										name: "Listar Cliente",
										icon: "imagenes/listar.png",
										items:[
																				]
										}	
										,		{	
										name: "Editar Cliente",
										icon: "imagenes/editar.png",
										items:[
																				]
										}	
										,					]
										}	
										,

																	{	
										name: "Nuevo Tag",
										icon: "imagenes/tag.png",
										items:[
																			{	
										name: "Tag",
										icon: "imagenes/rfid.png",
										items:[
																				]
										}	
										,						{	
										name: "Listar Tag",
										icon: "imagenes/listar.png",
										items:[
																				]
										}	
										,						]
										}	
										,
												{
										name: " Nuevo Usuarios", 
										icon: "imagenes/usuarios.png",
										items:[
													{	
										name: "Usuarios",
										icon: "imagenes/usuarios.png",
										items:[
																				]
										}
										,{	
										name: "Lista Usuario",
										icon: "imagenes/listar.png",
										items:[
																				]
										}
										,				]
									},
												{
										name: " Nuevo Vehiculo", 
										icon: "imagenes/auto.png",
										items:[
													{	
										name: "Vehiculo",
										icon: "imagenes/vehiculo.png",
										items:[
																				]
										}
										,				]
									},
									{	
										name: "Planes",
										icon: "imagenes/comunicafiles.png",
										items:[
																				]
										}
										,
																		{	
										name: "Mi Informacion",
										icon: "imagenes/informacion.png",
										items:[
																				]
										}		
										,		
																{	
										name: "Password",
										icon: "imagenes/password.png",
										items:[
																				]
										}		
										
										,										{	
										name: "Login",
										icon: "imagenes/login.png",
										items:[
																				]
										}		
										,										{	
										name: "Logout",
										icon: "imagenes/logout.png",
										items:[
																				]
										}		
																		]
								}		
								
								,	
								{
								name: "Usuarios", 
								icon: "imagenes/usuarios.png",
								items:[
																]
								}							
								,	
								{
								name: "Reportes", 
								icon: "imagenes/reportes.png",
								items:[
																]
								}
								,	
								{
								name: "Configuracion", 
								icon: "imagenes/configuracion.png",
								items:[
								
										
										
										{	
										name: "Permisos",
										icon: "imagenes/permiso.png",
										items:[
																				]
										}
										,
										{	
										name: "Informacion",
										icon: "imagenes/bd.png",
										items:[
																				]
										}
											,				{	
										name: "Cargar Excel",
										icon: "imagenes/subetxt.png",
										items:[
																				]
										}
										,										{	
										name: "Procesar Excel",
										icon: "imagenes/procesatxt.png",
										items:[
																				]
										}
												
										,									]
								}
								,	
								{
								name: "Login", 
								icon: "imagenes/login.png",
								items:[
																]
								}		
								,	
								{
								name: "Logout", 
								icon: "imagenes/logout.png",
								items:[
																]
								}		
													]
			},
			function(optionClicked)
			{
				posicion   = optionClicked.lastIndexOf('.');				
				seleccion  = optionClicked.substring(posicion+1);
				seleccion  = seleccion.toUpperCase();
				var url = "";
<?php
				$archivoconfiguracion = "ScreenMenu_Ligas.lay";
				$archivo              = file($archivoconfiguracion);
				#Dibujamos el javascript para los urls
				for($i=0;$i<(sizeof($archivo)); $i++){
					$campovalidar   = explode("|",$archivo[$i]);
					$leyenda        = trim($campovalidar[0]);
					$url            = trim($campovalidar[1]);
					
					echo 'if (seleccion=="'.$leyenda.'"){';
					echo 'url = "'.$url.'"';
					echo "}";
				}

 ?>				
				window.parent.frames['Principal'].location.href = url;
			}
		);
	});
	</script>

		
	
	</body>
</html>