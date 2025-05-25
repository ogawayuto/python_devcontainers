#!/bin/bash

# コミットメッセージファイルを取得
commit_msg_file="$1"

# 現在のブランチ名を取得
branch_name=$(git symbolic-ref --short HEAD)

# 一時ファイルを作成
temp_file=$(mktemp)

# ブランチ名をプレフィックスとして追加し、既存のコミットメッセージを結合
echo "[$branch_name] $(cat $commit_msg_file)" > "$temp_file"

# 元のファイルを更新
cat "$temp_file" > "$commit_msg_file"

# 一時ファイルを削除
rm "$temp_file"
