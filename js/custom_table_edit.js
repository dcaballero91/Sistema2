$(document).ready(function(){
$('#data_table').Tabledit({
deleteButton: false,
editButton: false,
columns: {
identifier: [0, 'idCliente'],
editable: [[1, 'Nombre'], [2, 'ci'], [3, 'Telefono'], [4, 'Direccion'], [5, 'Cod_Tag']]
},
hideIdentifier: true,
url: 'Listartag.php'
});
});