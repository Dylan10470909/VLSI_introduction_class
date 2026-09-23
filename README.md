# 積體電路導論實作與期中專題 (VLSI & Digital Logic Design Labs)

> 本倉庫收錄「積體電路導論」課程之 Verilog HDL 電路設計、Testbench 驗證與期中專案原始碼。
---
## 🛠️ 開發環境與工具 (Environment & Tools)

* **開發語言**：Verilog HDL (IEEE 1364-2001)
* **模擬驗證工具**：Synopsys VCS
* **波形分析工具**：Synopsys Verdi / nWave
* **作業系統**：Linux (CentOS / Red Hat)

---

## 📂 專案架構與實驗內容 (Project Structure)

本專案依照各實驗主題模組化分類，並排除模擬產生之中間二進位與暫存檔：

| 目錄 | 模組名稱 | 說明 | 設計檔案 | 測試檔案 |
| :--- | :--- | :--- | :--- | :--- |
| **Lab03** | 8-bit Adder | 算術加法器設計與溢位判斷 | `ADD.v` | `ADD_TB.v` |
| **Lab04** | Arithmetic Unit (AU) | 基礎算術邏輯運算單元 | `AU.v` | `AU_TB.v` |
| **Lab05** | Conditional Logic | 條件判斷語法實作 (`assign`, `case`, `if-else`) | 多模組 | 多模組 Testbench |
| **Lab06** | D Flip-Flop (DFF) | 正反器與時序邏輯電路 | `DFF.v` | `DFF_TB.v` |
| **Lab07** | Counter | 計數器設計與時序重置驗證 | `Counter.v` | `Counter_TB.v` |
| **Lab08** | Frequency Divider | 除頻器電路設計與頻率轉換 | `Fdiv.v` | `Fdiv_TB.v` |
| **mid** | Midterm Project | 期中整合電路專題設計 | `mid.v` | `mid_TB.v` |

---

## 🚀 模擬執行步驟 (How to Simulate)

進入各實驗目錄後，使用 Synopsys VCS 編譯並倒出 FSDB 波形檔：

### 1. 編譯與執行模擬 (VCS)
```bash
cd Lab07
vcs -R Counter.v Counter_TB.v -debug_access+all -full64
