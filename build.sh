#!/bin/bash
set -e  # 启用“出错即退出”模式

# 检查是否安装了 git
if ! command -v git &> /dev/null; then
    echo "错误: git 未安装，请先安装 git。"
    exit 1
fi

# 定义仓库 URL
CORE_REPO="https://github.com/Bottom-farmer/openamp_core.git"
DRIVER_REPO="https://github.com/Bottom-farmer/intercore_driver.git"

# 克隆 openamp_core 仓库（如果尚未克隆）
if [ ! -d "openamp_core" ]; then
    echo "正在克隆 openamp_core 仓库..."
    git clone "$CORE_REPO"
else
    echo "openamp_core 仓库已存在，跳过克隆。"
fi

# 克隆 intercore_driver 仓库（如果尚未克隆）
if [ ! -d "intercore_driver" ]; then
    echo "正在克隆 intercore_driver 仓库..."
    git clone "$DRIVER_REPO"
else
    echo "intercore_driver 仓库已存在，跳过克隆。"
fi