#1
sed -i 's/Software/IT/g' employees.txt
#2
awk -F "," '$3 >= 30' employees.txt > temp.txt
#3
awk -F "," '{sum[$4] += $5; count[$4]++} END {for (dept in sum) {printf "%s: %d\n", dept, int(sum[dept]/count[dept] + 0.5)}}' temp.txt
#4
mv temp.txt updated_employees.txt
