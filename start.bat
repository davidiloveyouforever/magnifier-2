@echo off
chcp 65001 >nul
echo 🔍 放大鏡 App - 一鍵啟動
echo ==========================

REM 檢查Node.js
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ 請先安裝 Node.js
    pause
    exit /b 1
)

REM 檢查React Native CLI
react-native --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 📦 安裝 React Native CLI...
    npm install -g react-native-cli
)

REM 安裝依賴
echo 📦 安裝依賴套件...
npm install

echo.
echo ✅ 設置完成！
echo.
echo 🚀 啟動選項：
echo    npm run android  - 啟動 Android 版本
echo    npm run ios      - 啟動 iOS 版本
echo    npm start        - 啟動 Metro 服務器
echo.
echo 📱 使用說明：
echo    • 打開應用後直接開始使用
echo    • 雙指縮放來放大/縮小
echo    • 單指拖拽來移動視圖
echo    • 點擊手電筒圖標開啟照明
echo.

REM 詢問是否立即啟動
set /p choice="是否立即啟動 Android 版本？(y/n): "
if /i "%choice%"=="y" (
    echo 🚀 啟動 Android 版本...
    npm run android
)

pause
