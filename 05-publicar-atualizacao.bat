@echo off
setlocal
cd /d "%~dp0"
title Publicar Atualizacao da Central

if not exist ".git" (
  echo A primeira publicacao ainda nao foi preparada.
  echo Execute primeiro: 04-primeira-publicacao.bat
  pause
  exit /b 1
)

if not exist ".venv\Scripts\python.exe" (
  echo A central ainda nao foi instalada.
  echo Execute primeiro: 01-instalar-central.bat
  pause
  exit /b 1
)

echo.
echo Validando a central...
".venv\Scripts\python.exe" -m mkdocs build --strict
if errorlevel 1 goto :erro

git add .
if errorlevel 1 goto :erro

git diff --cached --quiet
if not errorlevel 1 (
  echo.
  echo Nao existem alteracoes para publicar.
  pause
  exit /b 0
)

set "MENSAGEM=Atualiza central de ajuda"
set /p "MENSAGEM=Descreva a atualizacao [Atualiza central de ajuda]: "
if "%MENSAGEM%"=="" set "MENSAGEM=Atualiza central de ajuda"

git commit -m "%MENSAGEM%"
if errorlevel 1 goto :erro

git push
if errorlevel 1 goto :erro

echo.
echo Atualizacao enviada.
echo O GitHub Pages publicara a nova versao automaticamente.
pause
exit /b 0

:erro
echo.
echo ERRO: a atualizacao nao foi publicada.
echo Leia a mensagem acima ou solicite ajuda.
pause
exit /b 1
