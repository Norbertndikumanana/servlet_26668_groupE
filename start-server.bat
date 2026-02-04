@echo off
cd /d "%~dp0"
echo Building project...
call mvn clean package -DskipTests
if errorlevel 1 (
    echo Build failed!
    pause
    exit /b 1
)
echo Starting Tomcat server on port 8081...
echo.
echo Access your application at: http://localhost:8081/
echo.
echo Press Ctrl+C to stop the server
echo.
call mvn cargo:run
pause
