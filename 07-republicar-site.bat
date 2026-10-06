@echo off
setlocal
cd /d "%~dp0"
title Republicar Central de Ajuda

if not exist ".git" (
  echo Repositorio local nao configurado.
  pause
  exit /b 1
)

echo.
echo Solicitando uma nova publicacao ao GitHub Pages...
git commit --allow-empty -m "Republica central de ajuda"
if errorlevel 1 goto :erro

git push
if errorlevel 1 goto :erro

echo.
echo Solicitacao enviada.
echo Aguarde alguns minutos e confira:
echo https://juarezabrahao.github.io/central-ajuda-hs/
pause
exit /b 0

:erro
echo.
echo ERRO: nao foi possivel solicitar a publicacao.
pause
exit /b 1
