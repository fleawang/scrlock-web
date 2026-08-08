@echo off
chcp 65001 >nul
cd /d %~dp0

echo 正在下载 html5-qrcode.min.js 到本地（扫码配对用，避免依赖外网 CDN）...
powershell -Command "Invoke-WebRequest -Uri 'https://cdn.jsdelivr.net/npm/html5-qrcode@2.3.8/html5-qrcode.min.js' -OutFile 'html5-qrcode.min.js'"
if exist html5-qrcode.min.js (
    echo 下载完成： html5-qrcode.min.js
) else (
    echo 下载失败，请手动访问 https://cdn.jsdelivr.net/npm/html5-qrcode/html5-qrcode.min.js 另存为 html5-qrcode.min.js
    pause
    exit /b 1
)
pause
