#Por agregar repetir el script en caso de tener mas NICs
#Lista las interfaces disponibles
Get-NetAdapter
Pause
Clear-Host
#Solicita la declaracion de variables
$NIC = Read-Host -Prompt 'Network Card Prefix'
$IP = Read-Host -Prompt 'IP Address'
$MASK = Read-Host -Prompt 'Mask (ex 24)'
$GW = Read-Host -Prompt 'Gateway'
$DNS = Read-Host -Prompt 'DNS server'
Write-Host "You input NIC is '$NIC'  IP'$IP'  Mask Prefix'$MASK' DNS Server '$DNS' Gateway '$GW' " 
pause
#New-NetIPAddress configura la ip,mascara y gateway
#Set-DnsClientServerAddress configura el servidor DNS
New-NetIPAddress -InterfaceIndex "$NIC" -IPAddress "$IP" -PrefixLength "$MASK" -DefaultGateway "$GW" | Out-Null
pause
Set-DnsClientServerAddress -InterfaceIndex "$NIC" -ServerAddresses "$DNS"
#Muestra Los resultados de la Configuracion
Get-NetIPAddress -InterfaceIndex "$NIC" | Sort-Object -Property InterfaceIndex | Format-Table
pause
Get-DnsClientServerAddress -InterfaceIndex "$NIC"
pause