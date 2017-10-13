REM canvasDataCli sync -c config.js
REM 
ECHO ON

echo ** Starting unpacking dimension files

for /D %%a in ("./dataFiles/*_dim") do (
  canvasDataCli unpack -c config.js -f %%a
)

echo ** Complete *_dim


