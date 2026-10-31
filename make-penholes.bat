@echo off
cd /d "%~dp0"
copy /b parts\part1.b64+parts\part2.b64+parts\part3.b64+parts\part4.b64+parts\part5.b64+parts\part6.b64 penholes.vpk.b64 >nul
certutil -f -decode "penholes.vpk.b64" "penholes.vpk"
if errorlevel 1 (
  echo decode failed
  pause
  exit /b 1
)
for %%A in ("penholes.vpk") do echo wrote %%~fA  size=%%~zA
echo Size must be 13167. Copy penholes.vpk to Left 4 Dead 2\left4dead2\addons\
pause
