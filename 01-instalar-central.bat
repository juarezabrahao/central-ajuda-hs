@echo off
setlocal
cd /d "%~dp0"
title Instalar Central de Ajuda

echo.
echo ============================================
echo  INSTALACAO DA CENTRAL DE AJUDA
echo ============================================
echo.

where py >nul 2>&1
if errorlevel 1 (
  echo ERRO: Python nao foi encontrado.
  echo Instale o Python e marque a opcao para adiciona-lo ao PATH.
  pause
  exit /b 1
)

if not exist ".venv\Scripts\python.exe" (
  echo Criando o ambiente Python...
  py -m venv .venv
  if errorlevel 1 goto :erro
)

echo Instalando ou atualizando as dependencias...
".venv\Scripts\python.exe" -m pip install -r requirements.txt
if errorlevel 1 goto :erro

echo.
echo Instalacao concluida com sucesso.
pause
exit /b 0

:erro
echo.
echo ERRO: a instalacao nao foi concluida.
pause
exit /b 1
