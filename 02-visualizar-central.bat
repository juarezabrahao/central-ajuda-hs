@echo off
setlocal
cd /d "%~dp0"
title Visualizar Central de Ajuda

if not exist ".venv\Scripts\python.exe" (
  echo A central ainda nao foi instalada.
  echo Execute primeiro: 01-instalar-central.bat
  pause
  exit /b 1
)

echo.
echo Iniciando a central em:
echo http://127.0.0.1:8000/
echo.
echo Mantenha esta janela aberta.
echo Para encerrar, pressione CTRL+C.
echo.

start "" "http://127.0.0.1:8000/"
".venv\Scripts\python.exe" -m mkdocs serve

pause
