@echo off
rem Abre o Claude Code nesta pasta e ja pede o brief do dia.
cd /d "%~dp0"
start "" "%~dp0quadro.html"
claude "/brief"
pause
