#!/bin/bash
#水仙花数--各个位数上的数字的立方和 为该数本身

#####计算时间用####
start=$(date +%s%N)  
start_ms=${start:0:16}  
#####计算时间用####

echo "三位数的水仙花数有："
one(){
	#本方法是针对于 求3位数的水仙花数（最好是用来判断该数是否为水仙花数）
	for i in {100..999}
	do 
		a=`echo $i%10|bc `	#取出个位
		b=`echo $i%100/10|bc `	#取出十位
		c=`echo $i%1000/100|bc `	#取出百位
		this_num=`echo $a*$a*$a+$b*$b*$b+$c*$c*$c|bc `
		if [ $this_num -eq $i ];then
			echo $i
		fi
	done
}
two(){
	# for 三层循环（执行时间短）
	for i in {1..9}
	do 
		for j in {0..9}
		do
			for k in {0..9}
			do
				this_num=`echo $i*$i*$i+$j*$j*$j+$k*$k*$k|bc `
				if [ $this_num -eq $i$j$k ]
				then 
					echo "$i$j$k"
				fi
			done
		done
	done
}
# one
two

#####计算时间用####
end=$(date +%s%N)   
end_ms=${end:0:16}  
echo "cost time is:"  
echo "scale=6;($end_ms - $start_ms)/1000000" | bc  
#####计算时间用####
