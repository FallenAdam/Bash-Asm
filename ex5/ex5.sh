#!/bin/bash

# Read values from pre_a_ex3.txt
FAIL_A=$(grep "FAIL" pre_a_ex3.txt | awk '{print $2}')
PASS_A=$(grep "PASS" pre_a_ex3.txt | awk '{print $2}')
NOTCHECK_A=$(grep "NOTCHECK" pre_a_ex3.txt | awk '{print $2}')

# Read values from pre_b_exp3.txt
FAIL_B=$(grep "FAIL" pre_b_exp3.txt | awk '{print $2}')
PASS_B=$(grep "PASS" pre_b_exp3.txt | awk '{print $2}')
NOTCHECK_B=$(grep "NOTCHECK" pre_b_exp3.txt | awk '{print $2}')

# Read values from pre_c_exp3.txt
FAIL_C=$(grep "FAIL" pre_c_exp3.txt | awk '{print $2}')
PASS_C=$(grep "PASS" pre_c_exp3.txt | awk '{print $2}')
NOTCHECK_C=$(grep "NOTCHECK" pre_c_exp3.txt | awk '{print $2}')

# Calculate totals
TOTAL_FAIL=$((FAIL_A + FAIL_B + FAIL_C))
TOTAL_PASS=$((PASS_A + PASS_B + PASS_C))
TOTAL_NOTCHECK=$((NOTCHECK_A + NOTCHECK_B + NOTCHECK_C))

# Calculate SUM1, SUM2, SUM3
SUM1=$((FAIL_A + PASS_A + NOTCHECK_A))
SUM2=$((FAIL_B + PASS_B + NOTCHECK_B))
SUM3=$((FAIL_C + PASS_C + NOTCHECK_C))

# Create final_ex3.txt and write the results
echo "FAIL: $TOTAL_FAIL" > final_ex3.txt
echo "" >> final_ex3.txt
echo "PASS: $TOTAL_PASS" >> final_ex3.txt
echo "" >> final_ex3.txt
echo "NOTCHECK: $TOTAL_NOTCHECK" >> final_ex3.txt
echo "" >> final_ex3.txt
echo "**********" >> final_ex3.txt
echo "" >> final_ex3.txt
echo "SUM1: $SUM1" >> final_ex3.txt
echo "" >> final_ex3.txt
echo "SUM2: $SUM2" >> final_ex3.txt
echo "" >> final_ex3.txt
echo "SUM3: $SUM3" >> final_ex3.txt

# Display final_ex3.txt content
cat final_ex3.txt
