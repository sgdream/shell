#!/bin/bash
#判断润年
#规则  4年一润 百年不润 4百年润
read -p "输入要判断的年份: " year
if [ `echo $year%4|bc` -eq 0 -a `echo $year%100|bc` -ne 0 ] || [ `echo $year%400|bc` -eq 0 ]
then
	echo "润年"
else
	echo "不是润年"
fi
