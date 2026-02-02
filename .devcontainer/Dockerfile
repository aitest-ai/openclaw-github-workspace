FROM mcr.microsoft.com/devcontainers/javascript-node:22

# 安裝 OpenClaw 並強制建立符號連結到 /usr/local/bin
RUN curl -fsSL https://openclaw.ai/install.sh | bash -s -- --non-interactive && \
    ln -sf $(npm root -g)/openclaw/openclaw.mjs /usr/local/bin/openclaw && \
    chmod +x /usr/local/bin/openclaw

# 設定工作目錄
WORKDIR /workspaces/openclaw-github-workspace

# 暴露儀表板埠位
EXPOSE 18789
