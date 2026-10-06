@echo off
setlocal
cd /d "%~dp0"
title Primeira Publicacao da Central

set "REPOSITORIO=https://github.com/juarezabrahao/central-ajuda-hs.git"

echo.
echo ============================================
echo  PRIMEIRA PUBLICACAO NO GITHUB
echo ============================================
echo Repositorio: %REPOSITORIO%
echo.

where git >nul 2>&1
if errorlevel 1 (
  echo ERRO: Git nao foi encontrado.
  pause
  exit /b 1
)

if not exist ".venv\Scripts\python.exe" (
  echo A central ainda nao foi instalada.
  echo Execute primeiro: 01-instalar-central.bat
  pause
  exit /b 1
)

echo Validando a central...
".venv\Scripts\python.exe" -m mkdocs build --strict
if errorlevel 1 goto :erro

if not exist ".git" (
  echo Preparando o repositorio local...
  git init
  if errorlevel 1 goto :erro
)

git remote get-url origin >nul 2>&1
if errorlevel 1 (
  git remote add origin "%REPOSITORIO%"
) else (
  git remote set-url origin "%REPOSITORIO%"
)
if errorlevel 1 goto :erro

git add .
if errorlevel 1 goto :erro

git diff --cached --quiet
if errorlevel 1 (
  git commit -m "Cria central de ajuda"
  if errorlevel 1 goto :erro
)

git branch -M main
if errorlevel 1 goto :erro

echo.
echo Enviando os arquivos...
echo O GitHub podera abrir o navegador para confirmar sua conta.
git push -u origin main
if errorlevel 1 goto :erro

echo.
echo Publicacao enviada com sucesso.
echo Agora abra o repositorio, entre em Settings, Pages
echo e selecione GitHub Actions em Source.
pause
exit /b 0

:erro
echo.
echo ERRO: a publicacao nao foi concluida.
echo Leia a mensagem acima ou solicite ajuda.
pause
exit /b 1
