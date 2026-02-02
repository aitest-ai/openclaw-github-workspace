#!/bin/bash

echo "正在安裝 GitHub 相關技能..."

# Install common GitHub skills
npx clawhub install github
npx clawhub install github-pr

echo "技能安裝完成！"
echo "你可以執行 'openclaw skills list' 來查看已安裝的技能。"
