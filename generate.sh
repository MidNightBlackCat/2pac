
./generate.py
cat gfwlist.conf |grep server > xxx.conf
sed 's/server=\/.//g' xxx.conf > yyy.conf 
sed 's/\/127.0.0.1#1053//g' yyy.conf > zzz.conf 
awk < zzz.conf '{printf "  \""$i"\"\:1,\n"}' > aaa.conf
sed '$s/.$//' aaa.conf > finish.conf

rm -rf gfwlist* xxx.conf yyy.conf zzz.conf aaa.conf
