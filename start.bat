@echo off
cd /d "%~dp0"
echo Arret des anciens serveurs Station Magazine...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$ports = 4000,5173; foreach ($port in $ports) { Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue | ForEach-Object { Stop-Process -Id $_.OwningProcess -Force -ErrorAction SilentlyContinue } }"
echo Serveur http://localhost:4000 - Interface http://localhost:5173
call npm.cmd run dev
pause
