#!/bin/bash
set -e

echo "🚀 正在為您安裝 OpenClaw..."

# 1. 執行官方安裝腳本
curl -fsSL https://openclaw.ai/install.sh | bash -s -- --non-interactive

# 2. 修正指令連結
# 嘗試從 npm 全域路徑找到 openclaw
NPM_BIN=$(npm config get prefix)/bin
if [ -f "$NPM_BIN/openclaw" ]; then
    sudo ln -sf "$NPM_BIN/openclaw" /usr/local/bin/openclaw
else
    # 備用方案：直接連結到 mjs 檔案
    NPM_ROOT=$(npm root -g)
    sudo ln -sf "$NPM_ROOT/openclaw/openclaw.mjs" /usr/local/bin/openclaw
fi

sudo chmod +x /usr/local/bin/openclaw

echo "✅ OpenClaw 安裝完成！"
openclaw --version
