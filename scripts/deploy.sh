#!/bin/bash

set -e

echo "Running deployment script..."

# 功能 1: 打印字符串
echo "Hello from GitHub Actions!"

echo "打印环境变量HOME的值: $HOME"

# 功能 2: 复制 root 所属文件到 /home/ubuntu，并更改权限
SRC_FILE="/etc/hostname"    # 你可以替换成其他 root 属主文件
DEST_FILE="/home/ubuntu/command_history.log"

sudo cp "$SRC_FILE" "$DEST_FILE"
sudo chown ubuntu:ubuntu "$DEST_FILE"
sudo chmod 644 "$DEST_FILE"

# 功能 3: 替换第二行为 ver: yyyyMMdd
DATE_STR=$(date +"ver: %Y%m%d")
sudo sed -i "2s/.*/$DATE_STR/" "$DEST_FILE"

# 功能 4: 打印 Python 版本
python3 --version

# 功能 5: 打印当前时间戳
echo "Timestamp: $(date +%s)"
