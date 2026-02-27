# ERIC TECH — Platform

產品與課程展示平台，支援後台管理、密碼保護與即時同步。

## 網址

| 頁面 | 路徑 |
|------|------|
| 前台展示 | `/` 或 `/index.html` |
| 後台管理 | `/admin.html` |

## 預設密碼

| 用途 | 密碼 |
|------|------|
| 後台管理員登入 | `admin123` |
| 座位預訂系統（範例） | `demo123` |
| Prompt 工程課程（範例） | `course2024` |

> 登入後台後可在 **Settings** 修改管理員密碼。

## 功能說明

### 前台 `index.html`
- 展示所有產品與課程卡片
- All / Products / Courses 篩選 Tab
- 有密碼的卡片標示 `Locked`，點選後跳出密碼輸入視窗
- 密碼正確才跳轉至目標網址

### 後台 `admin.html`
- 管理員登入驗證
- **Overview**：總覽統計 + 近期卡片
- **All Entries**：完整列表，支援搜尋、編輯、刪除
- **Add New**：新增產品或課程（標題、類型、URL、縮圖、標籤、描述、專屬密碼）
- **Settings**：修改管理員密碼、匯出 JSON 備份、清除所有資料

## 資料儲存

所有卡片資料儲存於瀏覽器 `localStorage`（key: `et_cards`）。  
前後台在同一個瀏覽器下會即時同步。

## 部署（Render Static Site）

1. 將 `index.html`、`admin.html` 推上 GitHub
2. Render → **New → Static Site**
3. 連接 GitHub repo
4. **Build Command**：留空
5. **Publish Directory**：`.`
6. Deploy 完成

## 新增卡片教學

1. 開啟 `網址/admin.html`
2. 輸入管理員密碼登入
3. 點左側 **Add New**
4. 填入標題、類型（Product / Course）、目標 URL
5. 可選：縮圖網址、標籤、描述、專屬密碼
6. 點 **Add Entry** 完成