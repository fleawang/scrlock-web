@echo off
chcp 65001 >nul
cd /d %~dp0

echo 正在下载 mqtt.min.js 到本地（避免依赖外网 CDN）...
powershell -Command "Invoke-WebRequest -Uri 'https://unpkg.com/mqtt@5.10.1/dist/mqtt.min.js' -OutFile 'mqtt.min.js'"
if exist mqtt.min.js (
    echo 下载完成： mqtt.min.js
) else (
    echo 下载失败，请手动访问 https://unpkg.com/mqtt/dist/mqtt.min.js 另存为 mqtt.min.js
    pause
    exit /b 1
)
pause
