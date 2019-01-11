Write-Warning "Este script cambiara el key de office 2016 plus en sistemas 64 bits version de office 64 bits asegurate de editar el script con tu key"
Read-Host -Prompt "Press Enter to continue"
cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /inpkey:XXXX-XXXX-XXXX-XXXX-XXXX | Out-Null
Write-Warning "Clave cambiada"
cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /act
Read-Host -Prompt "Press Enter to continue"

