#!/bin/bash
# 每月新增商业文章脚本
# 使用方法: bash add-monthly-articles.sh <年份> <月份>
# 示例: bash add-monthly-articles.sh 2026 7

YEAR=${1:-$(date +%Y)}
MONTH=${2:-$(date +%m)}
MONTH_NAME=$(date -d "$YEAR-$MONTH-01" "+%B" 2>/dev/null || echo "$YEAR-$MONTH")

echo "======================================"
echo "  准备添加 $YEAR 年 $MONTH_NAME 的商业文章"
echo "======================================"
echo ""
echo "请将 Reddit 文章添加到: business-articles-reddit.md"
echo "请在 '## $YEAR 年 $MONTH_NAME' 标题下以表格格式添加"
echo ""
echo "请将 X/Twitter 推文添加到: business-articles-x.md"
echo "请在 '## $YEAR 年 $MONTH_NAME' 标题下以表格格式添加"
echo ""
echo "格式参考已有条目，保留 10 条/月。"
echo ""
echo "完成后提交:"
echo "  git add business-articles-reddit.md business-articles-x.md"
echo "  git commit -m \"add $YEAR-$MONTH business articles\""
