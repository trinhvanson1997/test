#!/bin/bash
luachon1 () {
	ls -a /etc | grep -E "^a"
}

luachon2 () {
	date
}

luachon3 () {
	ls -1 /etc | wc -l
}

luachon4 () {
	read -p "Nhap mot so n: " n
	for ((i=0;i<n;i++))
	do
	echo "Xin chao sinh vien $i" > file_$i.txt
	done

}

luachon5 () {
	read -p "Nhap mot so nguyen x: " x
	sum=0
	while [ $x -gt 0 ]
	do
	so=$(($x%10))
	sum=$(($sum + $so))
	x=$(($x/10))
	done
	echo "Tong so cac so cua x la: $sum"
	
}

luachon6 () {
	read -p "Nhap mot so nguyen x: " x
		if [ $x -lt 1 ]
		then
			echo "x khong phai so nguyen to"
			return
		elif [ $x -eq 2 ]
		then	
			echo "x la mot so nguyen to"
			return
		fi
		for(( i=2; i*i<=$x; i++))
		do
			if [ $(($x % $i)) -eq 0 ]
			then
				echo "x khong phai so nguyen to"
				return
			fi
		done
		echo "x la mot so nguyen to"

}

luachon0 () {
 		exit
}
menu



