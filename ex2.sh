#!/bin/bash

# In ra ngày/giờ hiện tại
echo "Current Date and Time:"
date
echo

# In ra các tiến trình hiện có
echo "Process:"
function proCheck () 
{
ps 
}
proCheck 

# In ra tình trạng bộ nhớ
echo "Memory usage:"
free 
echo

# In ra tải CPU
echo "CPU load:"
uptime
echo

# In ra phiên bản kernel
echo "Kernel version is:"
uname -r
