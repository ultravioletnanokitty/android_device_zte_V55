######################
# Copyright (C) 2011 by ZTE
#####################
#!/system/bin/sh

SYSDIR=/data/local
LOGDIR=/data/local/logs
BINDIR=/system/bin

dmesg -c >> $LOGDIR/kernel/log_kernel.txt

$BINDIR/busybox cp -r /data/anr/traces.txt $LOGDIR/smem/traces.txt
date >> $LOGDIR/smem/traces.txt

dumpstate > $LOGDIR/smem/dumpstate.txt

# ZTE_MODIFY fanwuxun/dupucun 2011-11-29 add network command to dump the network information for debug..

echo "************ system network information"  >$LOGDIR/smem/networkInformation.txt
busybox ifconfig >> $LOGDIR/smem/networkInformation.txt
busybox route    >> $LOGDIR/smem/networkInformation.txt
#//更详细的网络接口信息
echo "*****************************************************************"  >>$LOGDIR/smem/networkInformation.txt
ip addr         >> $LOGDIR/smem/networkInformation.txt

#souce 网络路由信息
echo " "  >>$LOGDIR/smem/networkInformation.txt
echo "*****************************************************************"  >>$LOGDIR/smem/networkInformation.txt
echo "************ system network routing tables"  >>$LOGDIR/smem/networkInformation.txt
ip rule list           >> $LOGDIR/smem/networkInformation.txt
ip route show table 1  >> $LOGDIR/smem/networkInformation.txt
ip route show table 2  >> $LOGDIR/smem/networkInformation.txt
ip route show table 3  >> $LOGDIR/smem/networkInformation.txt
ip route show table 4  >> $LOGDIR/smem/networkInformation.txt
ip route show table 5  >> $LOGDIR/smem/networkInformation.txt
ip route show table 6  >> $LOGDIR/smem/networkInformation.txt
ip route show table 7  >> $LOGDIR/smem/networkInformation.txt
ip route show table 8  >> $LOGDIR/smem/networkInformation.txt

#//系统中当前的网络socket 的详细信息
echo " "  >>$LOGDIR/smem/networkInformation.txt
echo "*****************************************************************"  >>$LOGDIR/smem/networkInformation.txt
echo "************ system network sockets information"  >>$LOGDIR/smem/networkInformation.txt
busybox netstat -a>> $LOGDIR/smem/networkInformation.txt

# ZTE_MODIFY end fanwuxun/dupucun
