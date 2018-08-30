<!DOCTYPE html>
<link href="css/Estilo.css" rel="stylesheet" type="text/css"/>
<html>
<head>
    <title>Registro</title>
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
 
 <?php
  <!-- Header -->
    <div id="line">
    </div>
    <!-- /Header -->
    <!-- Header -->
    <div id="header">
        <div class="shell">
            <!-- Logo -->
            <h1 id="logo"><a href="index"></a></h1>
            <!-- /Logo -->            
        </div>
        
    </div>
    <!-- /Header -->
    <!-- Navigation -->
    <div id="navigation">
    </div>
    <!-- /Navigation -->

    <!-- Main -->
    <div id="main">
        <div id="body">
            
            <section>
                
<script type="text/javascript">

    //function validar() {
    //    var nombre = $("#txtNombre").val();
    //    var valnombre = $("#lblValNombre");
    //    if (nombre.length == 0) {

    //        valnombre[0].style.display = "block"

    //        event.preventDefault();
    //        return false;
    //    }
    //    return false;

    //}
</script>
<script src="./Registro_files/Auxiliares.js.descarga"></script>
<script>
    $(document).ready(function () {

        $("#txtCpR").keydown(function (e) {
            validaDigitos(e);
        });
        
    });
</script>

<form action="http://televiaweb.mx/Registro/Registro" method="post" novalidate><input name="__RequestVerificationToken" type="hidden" value="-Tyuz0iJc2hs-jNSD64wOntgtaWozUUipWLvela8zaFy_H_t4GGD1fvVLr0sLfoSCuVtiR4arsW63FWvAbxKbVQPuVG5pfTNJG6w40-jOh41">    <div id="dialogoDirecciones" title="Selecciona la Colonia" hidden="hidden">
    </div>
    <div class="shell">
        <div id="content-top"></div>
        <div id="content-middle">
            <div class="title">Registro</div>
            
            <p style=" color:blue; font-size:13px"></p>
            <p>(*) Campos obligatorios</p>
            <div>
                <table width="910" border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>
                        <td width="910">
                            <fieldset>
                                <legend>Datos Personales</legend>
                                <table width="900" border="0" cellspacing="0" cellpadding="0">
                                    <tbody><tr>
                                        <td class="textContent">
                                            <label for="TipoCliente">Tipo de Cliente:</label>
                                        </td>
                                        <td width="293">
                                            
                                            <select id="tipoPer" name="TipoCliente" style="width:250px" class="valid"><option value="1">Persona Física</option>
<option value="2">Empresa</option>
</select>
                                        </td>
                                        <td width="155">&nbsp;
                                            
                                            
                                        </td>
                                        <td width="293">&nbsp;
                                            
                                            
                                        </td>
                                    </tr>
                                </tbody></table>
                                <div id="persona" style="display: block">
                                    <table width="900" border="0" cellspacing="0" cellpadding="0" class="bordered">
                                        <tbody><tr>
                                            <td class="textContent" style="width:150px">
                                                <label for="Name">* Nombre:</label>
                                            </td>
                                            <td width="293">
                                                
                                                <input data-val="true" data-val-length="Máximo 40 caracteres" data-val-length-max="40" data-val-regex="Solo letras y números" data-val-regex-pattern="^[a-zA-Z_áéíóúñÑ.\s0-9]*$" id="txtNombre" name="Name" style="width:250px" type="text" value=""><br>
                                                <span class="textAlert" data-valmsg-for="Name" data-valmsg-replace="true"></span>
                                                <span style="display: none" id="lblValNombre"><label class="textAlert" for="">Campo obligatorio</label></span>
                                            </td>
                                            <td width="155">&nbsp;</td>
                                            <td width="293">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="textContent">
                                                <label for="Paterno">* Paterno:</label>
                                            </td>
                                            <td>
                                                
                                                <input data-val="true" data-val-length="Máximo 120 caracteres" data-val-length-max="120" data-val-regex="Solo letras y números" data-val-regex-pattern="^[a-zA-Z_áéíóúñÑ\s0-9]*$" id="txtPaterno" name="Paterno" style="width:250px" type="text" value=""><br>
                                                <span class="textAlert" data-valmsg-for="Paterno" data-valmsg-replace="true"></span>
                                                <span style="display: none" id="lblValPaterno"><label class="textAlert" for="">Campo obligatorio</label></span>
                                            </td>
                                            <td class="textContent">
                                                <label for="Materno">* Materno:</label>
                                            </td>
                                            <td>
                                                
                                                <input data-val="true" data-val-length="Máximo 100 caracteres" data-val-length-max="100" data-val-regex="Solo letras y números" data-val-regex-pattern="^[a-zA-Z_áéíóúñÑ\s0-9]*$" id="txtMaterno" name="Materno" style="width:250px" type="text" value=""><br>
                                                <span class="textAlert" data-valmsg-for="Materno" data-valmsg-replace="true"></span>
                                                <span style="display: none" id="lblValMaterno"><label class="textAlert" for="">Campo obligatorio</label></span>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td class="textContent">
                                                <label for="IdDocumento">* CI:</label>
                                            </td>
                                            <td>
                                                <input data-val="true" data-val-length="Máximo 13 caracteres" data-val-length-max="13" data-val-regex="Solo mayúsculas y números" data-val-regex-pattern="^[A-Z_Ñ\s0-9]*$" id="txtRfc" maxlength="13" name="IdDocumento" style="width:250px" type="text" value=""><br>
                                                
                                                <span class="textAlert" data-valmsg-for="IdDocumento" data-valmsg-replace="true"></span>
                                                <span style="display: none" id="lblValRfc"><label class="textAlert" for="">Campo obligatorio</label></span>
                                                <span id="spErrorRFCFisica" title="" style="color:red; display:none;">CI Inválido</span>
                                            </td>
                                            <td class="textContent">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </tbody></table>
                                </div>
                                <div id="empresa" style="display: none">
                                    <table width="900" border="0" cellspacing="0" cellpadding="0" class="bordered">
                                        <tbody><tr>
                                            <td class="textContent">* Razón Social:</td>
                                            <td colspan="3" width="735">
                                                
                                                <input id="txtPaternoE" name="Paterno" style="width:725px; padding-top:3px;padding-left:10px;" type="text" value=""><br>
                                                <span class="textAlert" data-valmsg-for="Paterno" data-valmsg-replace="true"></span>
                                                <span style="display: none" id="lblValPaternoE"><label class="textAlert" for="">Campo obligatorio</label></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="155" class="textContent">
                                                <label for="ContactoEmpresa">* Contacto:</label>
                                            </td>
                                            <td width="293">
                                                
                                                <input data-val="true" data-val-length="Máximo 100 caracteres" data-val-length-max="100" data-val-regex="Solo letras y números" data-val-regex-pattern="^[a-zA-Z_áéíóúñÑ\s0-9]*$" id="txtContacto" name="ContactoEmpresa" style="width:250px" type="text" value=""><br>
                                                <span class="textAlert" data-valmsg-for="ContactoEmpresa" data-valmsg-replace="true"></span>
                                                <span style="display: none" id="lblValContacto"><label class="textAlert" for="">Campo obligatorio</label></span>
                                            </td>
                                            <td class="textContent">
                                                <label for="IdDocumento">* CI:</label>
                                            </td>
                                            <td>
                                                
                                                <input id="txtRfcE" maxlength="12" name="IdDocumento" style="width:250px" type="text" value=""><br>
                                                <span class="textAlert" data-valmsg-for="IdDocumento" data-valmsg-replace="true"></span>
                                                <span style="display: none" id="lblValRfcE"><label class="textAlert" for="">Campo obligatorio</label></span>
                                                <span id="spErrorRFCMoral" title="" style="color:red; display:none;">CI Inválido</span>
                                            </td>
                                            
                                        </tr>
                                        
                                    </tbody></table>
                                </div>
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <fieldset>
                                <legend>Datos Dirección</legend>
                                <table width="900" border="0" cellspacing="0" cellpadding="0" class="bordered">
                                    <tbody><tr>
                                        <td width="155" class="textContent">
                                            <label for="IdPais">Pais:</label>
                                        </td>
                                        <td>
                                            <select disabled="disabled" id="ddlPais" name="IdPais" style="width:250px"><option selected="selected" value="3">Paraguay</option>
</select>
                                        </td>

                                        <td width="155" class="textContent">
                                            <label for="Cp">* C.P.:</label>
                                        </td>
                                        <td width="293">
                                            <input class="q" data-val="true" data-val-length="Campo a 5 dígitos" data-val-length-max="5" data-val-length-min="5" data-val-regex="Número entero 1 a 5 dígitos" data-val-regex-pattern="^[0-9]*$" data-val-required="Campo Obligatorio" id="txtCpR" maxlength="5" name="Cp" onblur="verificaDatosDireccion(this.id,&#39;chkOtraColonia&#39;,&#39;txtOtraColonia&#39;,&#39;btnOtraColonia&#39;,&#39;ddlEdo&#39;,&#39;txtCiudad&#39;,&#39;txtColonia&#39;);" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="Cp" data-valmsg-replace="true"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="155" class="textContent">
                                            <label for="Estado">* Estado:</label>
                                        </td>
                                        <td>
                                            <select data-val="true" data-val-required="Campo Obligatorio" id="ddlEdo" name="Departamento" style="width:250px"><option value="">Seleccione</option>
<option value="Asu">Asunción</option>
<option value="17">Alto Paraguay</option>
<option value="10">Alto Paraná</option>
<option value="13">Amambay</option>
<option value="16">Boquerón</option>
<option value="05">Caaguazú</option>
<option value="06">Caazapá</option>
<option value="14">Canindeyú</option>
<option value="11">Central</option>
<option value="01">Concepción</option>
<option value="03">Cordillera</option>
<option value="04">Guairá</option>
<option value="07">Itapúa</option>
<option value="08">Misiones</option>
<option value="12">Ñeembucú</option>
<option value="09">Paraguarí</option>
<option value="15">Presidente Hayes</option>
<option value="02y">San Pedro</option>
</select><br>
                                            <span class="textAlert" data-valmsg-for="Estado" data-valmsg-replace="true"></span>
                                        </td>
                                        <td width="155" class="textContent">
                                            <label for="Ciudad">* Ciudad:</label>
                                        </td>
                                        <td width="293">
                                            
                                            <input data-val="true" data-val-length="Máximo 50 caracteres" data-val-length-max="50" data-val-required="Campo Obligatorio" id="txtCiudad" name="Ciudad" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="Ciudad" data-valmsg-replace="true"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="textContent">
                                            <label for="Calle">* Nombre de calle:</label>
                                        </td>
                                        <td>
                                            
                                            <input data-val="true" data-val-length="Máximo 199 caracteres" data-val-length-max="199" data-val-regex="Solo letras y números" data-val-regex-pattern="^[a-zA-Z_áéíóúñÑ\s0-9]*$" data-val-required="Campo Obligatorio" id="txtCalle" name="Calle" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="Calle" data-valmsg-replace="true"></span>
                                            <span id="spErrorCalle" title="No se aceptan símbolos especiales" style="color:red; display:none;">No se aceptan símbolos especiales</span>
                                        </td>
                                        <td class="textContent">
                                            <label for="NumCalle">* Número de casa:</label>
                                        </td>
                                        <td>
                                            
                                            <input data-val="true" data-val-length="Campo 1 a 10 dígitos" data-val-length-max="10" data-val-length-min="1" data-val-regex="Número entero 1 a 10 dígitos" data-val-regex-pattern="^[0-9]*$" data-val-required="Campo Obligatorio" id="txtNumCalle" name="NumCalle" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="NumCalle" data-valmsg-replace="true"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="textContent">
                                            <label for="Colonia">* Barrio:</label>
                                        </td>
                                        <td>
                                            

                                            <select data-val="true" data-val-length="Máximo 50 caracteres" data-val-length-max="50" data-val-required="Campo Obligatorio" id="txtColonia" name="Colonia" style="width:250px"></select>


                                            
                                            <span class="textAlert" data-valmsg-for="Colonia" data-valmsg-replace="true"></span>
                                        </td>
                                        <td class="textContent">
                                            <input type="checkbox" id="chkOtraColonia" onclick="habilitaOtraColonia(this.id, &#39;txtOtraColonia&#39;, &#39;btnOtraColonia&#39;);">
                                            <label>Agregar nueva Barrio:</label>
                                            
                                        </td>
                                        <td>
                                            <input type="text" id="txtOtraColonia" disabled="disabled">
                                            <input type="button" id="btnOtraColonia" disabled="disabled" value="Agregar" onclick="agregarColonia(&#39;txtColonia&#39;,&#39;txtOtraColonia&#39;);">
                                        </td>
                                    </tr>
                                </tbody></table>
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                          <fieldset>
                            <legend>Datos de Contacto</legend>
                              <table width="900" border="0" cellspacing="0" cellpadding="0" class="bordered">
                                  <tbody><tr>
                                      <td width="155" class="textContent">
                                          <label for="Concesionaria1">Concesionaria:</label>
                                      </td>
                                      <td>
                                          <select id="txtConc" name="Concesionaria1" style="width:250px"><option value="">Selecione</option>
<option value="1">VIADUCTO BICENTENARIO</option>
<option value="2">AUNORTE</option>
<option value="3">CONMEX</option>
<option value="4">I+D</option>
<option value="5">SUPERVIA</option>
<option value="6">GRUPO AUTOPISTAS NACIONALES, S.A.</option>
<option value="7">OHL TOLUCA, S.A. DE C.V.</option>
<option value="8">PINFRA</option>
<option value="9">TDINAMICO</option>
<option value="10">LEPSA</option>
</select><br>
                                          <span class="textAlert" data-valmsg-for="Concesionaria1" data-valmsg-replace="true"></span>
                                      </td>
                                      <td width="155">&nbsp;</td>
                                      <td width="293">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="textContent">
                                            <label for="Telefono1">* Teléfono:</label>
                                        </td>
                                        <td>
                                            
                                            <input class="empresa" data-val="true" data-val-length="Máximo 10 dígitos" data-val-length-max="10" data-val-regex="Teléfono hasta 10 dígitos" data-val-regex-pattern="(\d{3})(\d{3})(\d{4})" data-val-required="Campo Obligatorio" id="txtTel1R" name="Telefono1" style="width:98px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="Telefono1" data-valmsg-replace="true"></span>

                                        </td>
                                        <td class="textContent"><label for="Mail">* E-Mail:</label></td>
                                        <td><input class="q" data-val="true" data-val-length="Campo hasta 99 caracteres" data-val-length-max="99" data-val-regex="Formato incorrecto. (Ejem. micorreo@proveedor.com)" data-val-regex-pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$" data-val-required="Campo Obligatorio" id="txtMailR" name="Mail" style="width:250px" type="text" value=""></td>
                                    </tr>
                                    <tr>
                                        <td class="textContent">
                                            <label for="Telefono3">Teléfono:</label>
                                        </td>
                                        <td><br>
                                            <span class="textAlert" data-valmsg-for="Telefono3" data-valmsg-replace="true"></span>
                                            <input data-val="true" data-val-length="Máximo 20 dígitos" data-val-length-max="20" data-val-regex="Teléfono hasta 20 dígitos" data-val-regex-pattern="^[0-9]*$" id="Telefono3" name="Telefono3" style="width:98px" type="text" value="">
                                            <br>
                                            <span class="textAlert" data-valmsg-for="NumFax" data-valmsg-replace="true"></span>
                                      </td>
                                        <td class="textContent">&nbsp;</td>
                                        <td><br>
                                            <span class="textAlert" data-valmsg-for="Mail" data-valmsg-replace="true"></span>
                                        </td>
                                    </tr>
                                    <tr>
                   
                                      
                                    </tr>
                              </tbody></table>
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <fieldset>
                                <legend>Datos de Tag</legend>
                                <table width="900" border="0" cellspacing="0" cellpadding="0" class="bordered">
                                    <tbody><tr>
                                        <td style="width:193px" class="textContent"><label for="NumTag">* Número de TAG:</label></td>
                                        <td width="293">
                                            <input class="q" data-val="true" data-val-regex="Campo alfanumérico, 11 a 12 dígitos" data-val-regex-pattern="^[OHLM.\s0-9]{11,12}?$" data-val-required="Campo Obligatorio" id="txtNumTagR" name="NumTag" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="NumTag" data-valmsg-replace="true"></span>
                                        </td>
                                        <td width="155" class="textContent"><label for="TipoCarro">* Tipo de vehiculo:</label></td>
                                        <td width="293">
                                            <select data-val="true" data-val-required="Campo Obligatorio" id="TipoCarro" name="TipoCarro" style="width:250px"><option value="">Seleccione Tipo</option>
<option value="1">Ligeros</option>
<option value="2">Autobuses 2 Ejes</option>
<option value="3">Autobuses 3 Ejes</option>
<option value="4">Autobuses 4 Ejes</option>
<option value="5">Camiones 2 Ejes</option>
<option value="6">Camiones 3 Ejes</option>
<option value="7">Camiones 4 Ejes</option>
<option value="8">Camiones 5 Ejes</option>
<option value="9">Camiones 6 Ejes</option>
<option value="10">Camiones 7 Ejes</option>
<option value="11">Camiones 8 Ejes</option>
<option value="12">Camiones 9 Ejes</option>
<option value="13">Ligero con 1 Eje Excedente</option>
<option value="14">Ligero con 2 Ejes Excedentes</option>
<option value="15">Camiones 10 Ejes</option>
<option value="16">Camiones 11 Ejes</option>
<option value="17">Camiones 12 Ejes</option>
<option value="18">Camiones 13 Ejes</option>
<option value="19">Camiones 14 Ejes</option>
<option value="20">Camiones 15 Ejes</option>
<option value="21">Camiones 16 Ejes</option>
<option value="22">Camiones 17 Ejes</option>
<option value="23">Camiones 18 Ejes</option>
</select><br>
                                            <span class="textAlert" data-valmsg-for="TipoCarro" data-valmsg-replace="true"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="155" class="textContent"><label for="MarcaCarro">Marca:</label></td>
                                        <td width="293">
                                            <input id="MarcaCarro" name="MarcaCarro" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="MarcaCarro" data-valmsg-replace="true"></span>
                                        </td>
                                        <td width="155" class="textContent"><label for="ModeloCarro">Modelo:</label></td>
                                        <td width="293">
                                            <input id="ModeloCarro" name="ModeloCarro" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="ModeloCarro" data-valmsg-replace="true"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="155" class="textContent"><label for="AnoCarro">Año:</label></td>
                                        <td width="293">
                                            <input data-val="true" data-val-regex="Campo numerico a 4 dígitos" data-val-regex-pattern="^[0-9]{4,4}?$" id="AnoCarro" name="AnoCarro" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="AnoCarro" data-valmsg-replace="true"></span>
                                        </td>
                                        <td width="155" class="textContent"><label for="ColorCarro">Color</label></td>
                                        <td width="293">
                                            <select id="ColorCarro" name="ColorCarro" style="width:250px"><option value="">Selecione Color</option>
<option value="1">Negro</option>
<option value="2">Blanco</option>
<option value="3">Rojo</option>
<option value="4">Fucsia</option>
<option value="5">Lima</option>
<option value="6">Amarillo</option>
<option value="7">Azul</option>
<option value="8">Agua</option>
<option value="9">Marrón</option>
<option value="10">Púrpura</option>
<option value="11">Verde</option>
<option value="12">Verde Oliva</option>
<option value="13">Azul Marino</option>
<option value="14">Azulón</option>
<option value="15">Gris</option>
<option value="16">Plata</option>
<option value="17">Menta</option>
<option value="18">Azul Cielo</option>
<option value="19">Crema</option>
<option value="20">Gris Claro</option>
</select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="155" class="textContent"><label for="PlacasCarro">* Número de placas</label></td>
                                        <td width="293">
                                            <input data-val="true" data-val-length="Máximo 10 caracteres" data-val-length-max="10" data-val-regex="Solo letras mayúsculas y números" data-val-regex-pattern="^[A-Z_Ñ.\s0-9]*$" data-val-required="Campo Obligatorio" id="PlacasCarro" name="PlacasCarro" style="width:250px" type="text" value=""><br>
                                            <span class="textAlert" data-valmsg-for="PlacasCarro" data-valmsg-replace="true"></span>
                                        </td>
                                        <td width="155" class="textContent">&nbsp;</td>
                                        <td width="293">&nbsp;</td>
                                    </tr>
                                </tbody></table>
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td height="23">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                           
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="910" border="0" cellspacing="0" cellpadding="0" class="tablasContent">
                                <tbody><tr>
                                    <td style="text-align: center">
                                        <div id="Editar" class="contenedorButton">
                                            <div class="buttonInput">
                                                <input type="submit" value="Registrar" id="lnkValida">
                                            </div>
                                        </div>
                                        
                                    </td>
                                    <td style="text-align: center">
                                        <div class="contenedorButton">
                                            <div class="buttonInput">
                                                <input type="submit" value="Cancelar" id="btnCancelar">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody></table>
                        </td>
                    </tr>
                </tbody></table>
            </div>
            <div class="clear"></div>
        </div>
        <div class="cl"></div>
    </div>
    <div class="shell">
        <div id="content-bottom"></div>
        <div class="cl">&nbsp;</div>
    </div>
</form>

            </section>
        </div>
    </div>
    <!-- /Main -->

    <!-- Footer -->
    <div id="footer">
        <div class="shell">

            <!-- VerCertificado width="100%" -->
            

            
    <!-- /Footer -->

    
    <script src="./Registro_files/jqueryval"></script>
;
    <script src="./Registro_files/registro"></script>
;

   
<link rel="stylesheet" type="text/css" href="chrome-extension://liecbddmkiiihnedobmlmillhodjkdmb/css/content.css">
?>
</body>
<loom-container id="lo-engage-ext-container"><loom-shadow data-reactroot="" classname="resolved">
</loom-shadow></loom-container>



</html>