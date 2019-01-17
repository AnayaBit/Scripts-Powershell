#ToDo
#Agregar Funcionalidad para puertos UDP
$ip= Read-Host -Prompt "Remote IP server"
$port= Read-Host -Prompt "TCP Port"
New-Object System.Net.Sockets.TCPClient("$ip", "$port") | Format-Table Connected -AutoSize
pause