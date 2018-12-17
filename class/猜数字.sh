#!/bin/bash
#判断数字
num=`echo $RANDOM  `	#用系统生成的随机数
over=1
while [ $over -eq 1 ];
do
	read -p "请输入一个数字：" get_num
	# echo $num
	if [ $get_num -eq $num ]
	then 
		over=0
		echo "答对了"
	elif [ $get_num -eq -100 ]	#后门
	then
		echo $num
	elif [ $get_num -gt $num ]	#当大于时候
	then
		echo "大了"
	elif [ $get_num -lt $num ]	#当大于时候
	then
		echo "小了"
	fi
done 
