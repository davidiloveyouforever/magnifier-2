# 🔍 放大鏡 App - 一鍵執行

一個**一鍵啟動**的移動端放大鏡應用，使用React Native開發，支持Android和iOS平台。無需複雜設置，打開即用！

## ✨ 功能特色

- 🚀 **一鍵啟動** - 打開應用直接開始使用，無需複雜設置
- 🔍 **實時放大鏡** - 使用相機實時放大查看物體
- 📱 **直觀手勢** - 雙指縮放、單指拖拽，操作簡單
- 💡 **手電筒** - 一鍵開啟照明，光線不足時必備
- 📸 **拍照功能** - 拍攝放大的照片保存回憶
- 🎯 **精確對焦** - 中心十字線和放大鏡邊框
- 🌙 **暗色主題** - 適合各種光線條件

## 技術特點

- **相機權限管理** - 完善的權限請求流程，確保用戶體驗
- **手勢識別** - 使用react-native-gesture-handler實現流暢的手勢操作
- **動畫效果** - 使用react-native-reanimated提供流暢的動畫
- **跨平台支持** - 同時支持Android和iOS平台

## 🚀 一鍵啟動

### 方法一：使用啟動腳本（推薦）

#### Windows 用戶
```bash
start.bat
```

#### Mac/Linux 用戶
```bash
chmod +x start.sh
./start.sh
```

### 方法二：手動啟動

#### 前置要求
- Node.js (版本 >= 16)
- React Native CLI
- Android Studio (Android開發)
- Xcode (iOS開發)

#### 快速啟動
```bash
# 安裝依賴
npm install

# iOS額外設置（僅Mac用戶）
cd ios && pod install && cd ..

# 啟動應用
npm run android  # Android版本
npm run ios      # iOS版本
```

## 權限說明

### Android權限
- `CAMERA` - 相機權限，用於放大鏡功能
- `FLASHLIGHT` - 手電筒權限
- `WRITE_EXTERNAL_STORAGE` - 存儲權限，用於保存照片

### iOS權限
- `NSCameraUsageDescription` - 相機使用說明
- `NSMicrophoneUsageDescription` - 麥克風使用說明（錄製功能）
- `NSPhotoLibraryUsageDescription` - 相簿使用說明

## 📱 使用說明

### 🚀 一鍵啟動體驗
1. **打開應用** - 應用會自動請求相機權限並啟動
2. **立即使用** - 無需額外設置，直接開始放大查看

### 🎮 操作指南
- **🔍 放大縮小** - 雙指縮放手勢
- **👆 移動視圖** - 單指拖拽
- **💡 手電筒** - 點擊頂部手電筒圖標
- **📸 拍照** - 點擊相機圖標保存當前畫面
- **🔄 重置** - 點擊刷新圖標回到原始大小

### 💡 使用技巧
- 在光線不足的環境下，開啟手電筒功能
- 使用中心十字線精確對焦
- 雙指縮放可以達到5倍放大效果

## 項目結構

```
src/
├── App.js                 # 主應用組件
├── components/
│   ├── CameraView.js      # 相機預覽組件
│   ├── MagnifierControls.js # 控制面板組件
│   └── PermissionScreen.js  # 權限請求屏幕
```

## 開發說明

### 主要依賴

- `react-native-camera` - 相機功能（內建權限處理）
- `react-native-gesture-handler` - 手勢識別
- `react-native-reanimated` - 動畫庫
- `react-native-vector-icons` - 圖標庫

### 自定義配置

可以在以下文件中修改應用配置：

- `android/app/src/main/AndroidManifest.xml` - Android權限配置
- `ios/MagnifierApp/Info.plist` - iOS權限配置
- `src/components/MagnifierControls.js` - 控制面板樣式

## 故障排除

### 常見問題

1. **應用無法啟動**
   - 確保已安裝Node.js和React Native CLI
   - 運行 `npm install` 安裝依賴

2. **相機權限被拒絕**
   - 應用會自動請求權限，點擊"確定"即可
   - 如被拒絕，前往設備設置手動開啟相機權限

3. **手電筒不工作**
   - 確保設備支持手電筒功能
   - 部分設備可能不支持手電筒

4. **拍照功能異常**
   - 檢查存儲權限
   - 確保有足夠的存儲空間

## 版本歷史

- v2.0.0 - **一鍵執行版本** - 簡化啟動流程，打開即用
- v1.0.0 - 初始版本，包含基本放大鏡功能

## 許可證

MIT License
