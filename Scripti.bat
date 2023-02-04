@echo off
powershell -noprofile -command "&{ start-process powershell -ArgumentList 'Set-ExecutionPolicy Unrestricted' -verb RunAs}"
powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file %CD%\Dev.ps1' -verb RunAs}"
echo Ambiente concluido
Pause