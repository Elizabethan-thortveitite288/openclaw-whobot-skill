#!/usr/bin/env bash
# sync-knowledge.sh — 从 whobot-ai/whobot-ai 仓库拉取最新知识库，更新 Skill
#
# 用法：
#   ./scripts/sync-knowledge.sh
#
# 依赖：gh (GitHub CLI)

set -euo pipefail

REPO="whobot-ai/whobot-ai"
FILE="openclaw-knowledge.md"
TARGET="references/knowledge.md"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "📥 从 ${REPO} 拉取最新知识库..."

# 通过 GitHub API 获取文件内容
gh api "repos/${REPO}/contents/${FILE}" --jq '.content' | base64 -d > "${PROJECT_DIR}/${TARGET}"

echo "✅ 知识库已更新：${TARGET}"
echo ""
echo "📊 文件信息："
wc -l "${PROJECT_DIR}/${TARGET}" | awk '{print "   行数: "$1}'
wc -c "${PROJECT_DIR}/${TARGET}" | awk '{print "   字节: "$1}'
echo ""
echo "💡 提示：如需重新打包 .skill 文件，请运行："
echo "   cd ${PROJECT_DIR} && claude skill package ."
