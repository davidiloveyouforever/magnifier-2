@echo off
chcp 65001 >nul
echo 🔍 啟動放大鏡 App...
echo.

REM 檢查index.html是否存在
if not exist "index.html" (
    echo ❌ 找不到 index.html 文件
    echo 請確保文件存在於當前目錄
    pause
    exit /b 1
)

REM 使用默認瀏覽器打開HTML文件
echo 🚀 正在啟動瀏覽器...
start "" "index.html"

echo ✅ 放大鏡 App 已啟動！
echo.
echo 📱 使用說明：
echo    • 允許瀏覽器存取相機
echo    • 滾輪縮放來放大/縮小
echo    • 拖拽來移動視圖
echo    • 點擊手電筒圖標開啟照明
echo    • 點擊相機圖標拍照
echo.
echo 💡 提示：建議使用Chrome或Edge瀏覽器以獲得最佳體驗
echo.
pause
