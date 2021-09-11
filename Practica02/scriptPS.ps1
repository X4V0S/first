
function Reporte-Bateria {
param([CmdletBinding()][ValidateSet('1', '2', '3')][string]$hostOP)

while($hostOP -ne '3') {
$hostOP = Read-Host -Prompt 'Que deseas hacer? [1] Generar un nuevo reporte de bateria. [2] Eliminar reporte generado. [3] Salir. '


#Opcion [1] del menu
if($hostOP -eq '1') {
powercfg /batteryreport | Out-Null

Convert-Path .\battery-report.html | Out-File -FilePath .\htmlPage.txt
$page = Get-Content .\htmlPage.txt -Raw 
start msedge $page
}


#Opcion [2] del menu
elseif($hostOP -eq '2') {
del .\battery-report.html -ErrorAction SilentlyContinue
del .\htmlPage.txt -ErrorAction SilentlyContinue
Write-Host 'Reporte eliminado con exito.' 
}


#Opcion [3] del menu
else {
break
}
}
}

Write-Host 'Para usar la funcion, escriba: Reporte-Bateria'