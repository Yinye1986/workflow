#!/bin/bash

SCRIPT_FILE="$1"

# yazi 无法区分 sh 脚本的具体类型, 于是用此包装器能够使用正确的解释器执行 sh 脚本
# 未实现完善的错误处理
# 默认使用 /bin/sh

if [ ! -f "$SCRIPT_FILE" ]; then
    echo "Error: File not found: $SCRIPT_FILE"
    exit 1
fi

SHEBANG=$(head -n 1 "$SCRIPT_FILE")

if [[ "$SHEBANG" =~ ^#\! ]]; then
    INTERPRETER=$(echo "$SHEBANG" | sed 's/^#!//')
else
    INTERPRETER="/bin/sh"
fi

echo "$INTERPRETER $SCRIPT_FILE"
exec "$INTERPRETER" "$SCRIPT_FILE"
