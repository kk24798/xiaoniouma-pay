@echo off
cd /d "%~dp0"
echo ??? Plus????????
echo ????: http://127.0.0.1:8080/recharge.html
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do echo ?????: http://%%a:8080/recharge.html
python -m http.server 8080 --bind 0.0.0.0
pause
