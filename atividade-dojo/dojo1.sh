clear;

num=1
while [ $num -le 10 ]
do
	echo "Contando... $num..."
	num=$(( $num + 1 ))
	sleep 1s;
done


