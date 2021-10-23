Start-Transcript -Path ".\transcript.txt"

Write-Host "Mi IP local"
Get-NetIPAddress -AddressFamily IPv4


Write-Host "Mi IP publica"
Invoke-WebRequest ifconfig.me | Select-Object -Expand Content


Write-Host "Escaneo a mi segmento de red privado"
nmap 192.168.0.104/24


Write-Host "Escaneo a una IP de mi segmento con un script"
nmap --script=unusual-port 192.168.0.102


Write-Host "#Escaneo a una IP publica"
nmap last.fm

Stop-Transcript