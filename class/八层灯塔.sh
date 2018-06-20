#八层灯塔问题
#!/bin/bash
num=765
a=1
all=1
for i in {1..7}
do 
	a=`echo $a*2|bc`
	all=`echo $all+$a|bc`
done
echo `echo $num / $all|bc` 
