# OpenClaw GitHub Workspace

這個儲存庫旨在讓你能夠在 GitHub Codespaces 中輕鬆運行 [OpenClaw](https://openclaw.ai/)。

## 快速開始

1.  **在 Codespaces 中開啟**：點擊儲存庫頁面上的 **Code** 按鈕，選擇 **Codespaces** 標籤，然後點擊 **Create codespace on main**。
2.  **執行初始化**：在 Codespace 終端機中執行以下指令來設定你的 OpenClaw：
    ```bash
    openclaw onboard
    ```
    這將引導你完成安全性確認、模型設定（建議使用 Anthropic Claude API Key）以及通訊頻道設定。
3.  **啟動 Gateway**：設定完成後，啟動 OpenClaw Gateway：
    ```bash
    openclaw gateway
    ```
4.  **安裝 GitHub 技能（選用）**：如果你想讓 OpenClaw 能夠操作 GitHub（如建立 Issue 或 PR），可以執行：
    ```bash
    bash setup-skills.sh
    ```
5.  **訪問儀表板**：Codespace 會自動偵測到 `18789` 埠位。點擊彈出的通知或在 **Ports** 標籤中開啟瀏覽器，即可訪問 OpenClaw 儀表板。

## 注意事項

-   **安全性**：OpenClaw 是一個強大的 AI 助手，請務必閱讀[安全性指南](https://docs.openclaw.ai/gateway/security)。
-   **API 金鑰**：你需要準備好你的 AI 模型 API 金鑰（如 Anthropic 或 OpenAI）。
-   **持久化**：Codespaces 中的資料會保留在 `/workspaces` 目錄下。OpenClaw 的設定通常存放在 `~/.openclaw`，請確保在 Codespace 暫停後重新啟動時檢查設定。

## 相關資源

-   [OpenClaw 官方文件](https://docs.openclaw.ai/)
-   [GitHub 儲存庫](https://github.com/openclaw/openclaw)
