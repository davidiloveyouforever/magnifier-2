#!/bin/bash

echo "🔍 放大鏡 App - 一鍵啟動"
echo "=========================="

# 檢查Node.js
if ! command -v node &> /dev/null; then
    echo "❌ 請先安裝 Node.js"
    exit 1
fi

# 檢查React Native CLI
if ! command -v react-native &> /dev/null; then
    echo "📦 安裝 React Native CLI..."
    npm install -g react-native-cli
fi

# 安裝依賴
echo "📦 安裝依賴套件..."
npm install

# iOS額外設置
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "🍎 iOS 額外設置..."
    cd ios && pod install && cd ..
fi

echo ""
echo "✅ 設置完成！"
echo ""
echo "🚀 啟動選項："
echo "   npm run android  - 啟動 Android 版本"
echo "   npm run ios      - 啟動 iOS 版本"
echo "   npm start        - 啟動 Metro 服務器"
echo ""
echo "📱 使用說明："
echo "   • 打開應用後直接開始使用"
echo "   • 雙指縮放來放大/縮小"
echo "   • 單指拖拽來移動視圖"
echo "   • 點擊手電筒圖標開啟照明"
echo ""

# 詢問是否立即啟動
read -p "是否立即啟動 Android 版本？(y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "🚀 啟動 Android 版本..."
    npm run android
fi
