#!/bin/bash

# Yêu cầu người dùng nhập số nguyên thứ nhất
echo "Nhập số nguyên thứ nhất: "
read num1

# Yêu cầu người dùng nhập số nguyên thứ hai
echo "Nhập số nguyên thứ hai: "
read num2

# Tính tổng hai số nguyên
sum=$((num1 + num2))

# Hiển thị kết quả
echo "Tổng của $num1 và $num2 là: $sum"