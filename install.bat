@echo off
setlocal
cd /d "%~dp0"
where node >nul 2>nul || (echo Installez Node.js 20 ou plus recent : https://nodejs.org/ & pause & exit /b 1)
echo === Installation des dependances ===
call npm.cmd install || (pause & exit /b 1)
echo === Creation de la base et du compte admin ===
call npm.cmd run setup || (pause & exit /b 1)
echo === Termine. Consultez .env pour vos identifiants ===
pause
