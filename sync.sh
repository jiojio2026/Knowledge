#!/bin/bash

# Hugo 知识库自动同步脚本

set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BRANCH="main"
REMOTE_NAME="origin"
REMOTE_URL="https://github.com/jiojio2026/knowleage-base.git"

echo "🚀 开始同步到 GitHub"
echo "📍 仓库: $REPO_DIR"
echo ""

cd "$REPO_DIR"

# 检查 Git 状态
if [[ -z $(git status --porcelain) ]]; then
    echo "✅ 没有更改需要提交"
    exit 0
fi

# 提交并推送
git add .
COMMIT_MSG=$(date +"%Y-%m-%d %H:%M:%S - 更新")
git commit -m "$COMMIT_MSG"
git push "$REMOTE_NAME" "$BRANCH"

echo ""
echo "✅ 同步完成！"
echo "🔗 网站地址: https://jiojio2026.github.io/knowleage-base/"
