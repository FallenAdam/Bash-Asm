#!/bin/bash

# Kiểm tra xem có đối số được cung cấp không
if [ $# -eq 0 ]; then
    echo "Usage: $0 text.txt"
    exit 1
fi

# Kiểm tra xem tệp tin có tồn tại không
if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

# Đọc và hiển thị nội dung của tệp tin với số thứ tự từng dòng
line_number=1
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))
done < "$1"