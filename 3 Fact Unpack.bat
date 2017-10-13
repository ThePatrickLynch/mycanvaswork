REM canvasDataCli sync -c config.js
REM 
ECHO ON

echo ** Starting unpacking fact files

for /D %%a in ("./dataFiles/*_fact") do (
  canvasDataCli unpack -c config.js -f %%a
)

echo ** Complete *_fact


