#!/bin/bash

echo "Hello from GitHub Actions!"

# 假设源文件路径如下
SOURCE_FILE="/tmp/source_file.log"
TARGET="$HOME/command_history.log"

# 创建源文件以模拟
echo "line1" > "$SOURCE_FILE"
echo "ver: 20230101" >> "$SOURCE_FILE"
echo "line3" >> "$SOURCE_FILE"

# 复制并修改权限
cp "$SOURCE_FILE" "$TARGET"
chown "$(whoami)":"$(whoami)" "$TARGET"
chmod 644 "$TARGET"

# 替换第二行
sed -i '2s/.*/ver: '"$(date +%Y%m%d)"'/' "$TARGET"

# 打印 Python 版本
python3 --version

# 打印当前时间戳
date "+%Y-%m-%d %H:%M:%S"
