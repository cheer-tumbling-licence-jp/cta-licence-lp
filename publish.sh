#!/usr/bin/env bash
# ============================================================
# LP公開スクリプト
# 使い方：このフォルダで `./publish.sh "更新内容のメモ"` を実行するだけ
# 例：    ./publish.sh "受講料を更新"
#
# 何が起こるか：
#   1. 変更されたファイルをすべてGitに記録
#   2. GitHubに送信
#   3. 数分後、 https://licence.cheer-tumbling.jp/ に自動反映
# ============================================================

set -e

cd "$(dirname "$0")"

# 引数（更新メモ）。指定なしなら日時を使う
MSG="${1:-Update on $(date +%Y-%m-%d\ %H:%M)}"

echo "▶ 変更を確認しています..."
if [ -z "$(git status --porcelain)" ]; then
  echo "✓ 変更はありません。何もせず終了します。"
  exit 0
fi

git status --short

echo ""
echo "▶ コミット作成: $MSG"
git add -A
git commit -m "$MSG"

echo ""
echo "▶ GitHubに送信..."
git push origin main

echo ""
echo "✅ 送信完了！1〜2分後に下記URLへ自動反映されます："
echo "   https://licence.cheer-tumbling.jp/"
echo ""
echo "（反映状況の確認）"
echo "   https://github.com/cheer-tumbling-licence-jp/cta-licence-lp/actions"
