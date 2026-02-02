#!/bin/bash

echo "🚀 正在啟動自動配對監控..."
echo "請回到瀏覽器點擊 'Connect'，我會自動幫您核准連線。"

while true; do
    # 嘗試獲取最新的 controlui 配對碼
    CODE=$(openclaw pairing list controlui 2>/dev/null | grep -oE '[0-9]{5}' | head -n 1)
    
    if [ ! -z "$CODE" ]; then
        echo "發現配對碼: $CODE，正在核准..."
        openclaw pairing approve controlui "$CODE"
        echo "✅ 核准成功！您的儀表板現在應該已經連線了。"
        exit 0
    fi
    sleep 1
done
