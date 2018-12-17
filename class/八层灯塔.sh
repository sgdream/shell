#八层灯塔问题
#!/bin/bash
num=765
a=1
all=1
b[0]=1
for i in {1..7}
do 
	a=`echo $a*2|bc`
	all=`echo $all+$a|bc`
	b[$i]=$a
	#echo "${b[$i]}"
done
#echo `echo $num / $all|bc` #最顶端的数量
echo `echo ${b[$i]}* $num / $all|bc` #最底端的数量
