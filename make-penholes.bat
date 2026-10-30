@echo off
cd /d "%~dp0"
certutil -f -decode "penholes.vpk.b64" "penholes.vpk"
if errorlevel 1 (
  echo decode failed
  pause
  exit /b 1
)
for %%A in ("penholes.vpk") do echo wrote %%~fA  size=%%~zA
echo Size must be 13118. Copy penholes.vpk to Left 4 Dead 2\left4dead2\addons\
pause
