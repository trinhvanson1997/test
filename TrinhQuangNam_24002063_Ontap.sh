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

menu ()
	while true; do
		echo "
	1) Hiển thị thông tin của tất cả các thư mục hoặc tệp tin bắt đầu bởi chữ cái “a”
trong thư mục /etc.
2) Hiển thị ngày và giờ của hệ thống
3) Đếm số lượng tệp tin hoặc thư mục trong thư mục /etc
4) Nhập vào một số n, tạo ra n tệp tin có tên file_1.txt, file_2.txt, ..., file_n.txt với
nội dung lần lượt là: “Xin chào sinh viên 1”, “Xin chào sinh viên 2”, ...., “Xin
chào sinh viên n”.
5) Nhập vào một số nguyên x. Tính tổng số các chữ số của x
6) Nhập vào một số nguyên x. Kiểm tra xem x có phải số nguyên tố không?
0) Thoát khỏi menu (1đ)"
	read -p "Nhap mot lua chon: " choice
	case $choice in
		1) luachon1
		;;
		2) luachon2
		;;
		3) luachon3
		;;
		4) luachon4
		;;
		5) luachon5
		;;
		6) luachon6
		;;
		0) luachon0
		;;
	esac
	echo ""
	done
menu



