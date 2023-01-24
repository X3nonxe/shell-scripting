#! /bin/bash
# show memory and disk
set -o history
while true
do
 echo "=== Program berjalan ==="
 echo "Menampilkan ukuran memory pada sistem dalam satuan megabytes..."
 
 #menampilkan memori menggunakan command free
 echo "`free --mega`"
 echo " "
 
 echo "Menampilkan penggunaan ruang disk pada filesystem dalam satuan gigabytes..."
 sleep 3s
 #menampilkan disk menggunakan command df
 echo "`df -h --block-size=G`"
 echo " "

 echo "Menampilkan penggunaan ruang disk pada filesystem hanya untuk kolom Filesystem dan Use%..."
 sleep 1m
 #hanya menampilkan field filesystem dan use
 echo "`df -h -t ext4 --output=source,pcent`"
 history -w history-nino.txt
 echo " "
 sleep 3s
done
