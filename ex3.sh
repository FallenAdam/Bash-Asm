#!/bin/bash

echo "List of all filesystems:"
df -h

echo ""
echo "Filesystems with less than 80% free space:"

# Duyệt qua từng dòng đầu ra của df -h, bỏ qua dòng tiêu đề
df -h | tail -n +2 | while IFS= read -r line; do
    # Lấy giá trị phần trăm đã sử dụng (cột 5) và loại bỏ ký tự '%'
    usage=$(echo "$line" | awk '{print $5}' | tr -d '%')

    # Kiểm tra nếu phần trăm đã sử dụng nhỏ hơn 80 (tức là ít hơn 20% dung lượng trống)
    if [[ "$usage" =~ ^[0-9]+$ && "$usage" -lt 80 ]]; then
        echo "$(echo "$line" | awk '{print $1}') has less than 80% free space"
    fi
done
