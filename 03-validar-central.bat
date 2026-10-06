@echo off
setlocal
cd /d "%~dp0"
title Validar Central de Ajuda

if not exist ".venv\Scripts\python.exe" (
  echo A central ainda nao foi instalada.
  echo Execute primeiro: 01-instalar-central.bat
  pause
  exit /b 1
)

echo.
echo Validando links, menu e arquivos Markdown...
".venv\Scripts\python.exe" -m mkdocs build --strict
if errorlevel 1 (
  echo.
  echo ERRO: existem problemas que precisam ser corrigidos.
  pause
  exit /b 1
)

echo.
echo Central validada com sucesso.
pause
exit /b 0
