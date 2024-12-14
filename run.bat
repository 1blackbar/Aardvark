@echo off
echo Starting local server...
start /B python -m http.server 8000
timeout /t 2
start http://localhost:8000/index.html
echo Server started at: http://localhost:8000/
pause
