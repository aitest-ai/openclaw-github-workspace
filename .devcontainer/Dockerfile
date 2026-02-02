FROM mcr.microsoft.com/devcontainers/javascript-node:22

# 安裝 OpenClaw。我們使用官方腳本，並在啟動時處理路徑問題，避免建置階段失敗。
RUN curl -fsSL https://openclaw.ai/install.sh | bash -s -- --non-interactive

# 設定工作目錄
WORKDIR /workspaces/openclaw-github-workspace

# 暴露儀表板埠位
EXPOSE 18789
