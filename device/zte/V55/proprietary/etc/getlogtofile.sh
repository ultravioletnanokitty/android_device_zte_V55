######################
# Copyright (C) 2011 by ZTE
#####################
#!/system/bin/sh

SYSDIR=/data/local
LOGDIR=/data/local/logs
DEVDIR=/dev
BINDIR=/system/bin

mkdir $LOGDIR
mkdir $DEVDIR/logs
mkdir $LOGDIR/kernel
mkdir $LOGDIR/logcat
mkdir $LOGDIR/smem
mkdir $LOGDIR/resetlog

cd $SYSDIR
mv $LOGDIR/loglast4.tar.gz $LOGDIR/loglast5.tar.gz
mv $LOGDIR/loglast3.tar.gz $LOGDIR/loglast4.tar.gz
mv $LOGDIR/loglast2.tar.gz $LOGDIR/loglast3.tar.gz
mv $LOGDIR/loglast1.tar.gz $LOGDIR/loglast2.tar.gz

$BINDIR/busybox du -sm $LOGDIR | $BINDIR/busybox grep [89]
case "$?" in
   0) echo "du > 8 $?"
   rm -r $LOGDIR/loglast5.tar.gz
   $BINDIR/busybox tar cf $LOGDIR/loglast1.tar.gz logs/kernel logs/logcat logs/smem logs/resetlog
   ;;
   
   1) echo "du < 8 $?"
   $BINDIR/busybox tar cf $LOGDIR/loglast1.tar.gz logs/kernel logs/logcat logs/smem logs/resetlog
   ;;
esac
   
rm -r logs/kernel/*
rm -r logs/logcat/*
rm -r logs/smem/*
rm -r logs/resetlog/*

# ZTE_MODIFY caoyaobin fanwuxun, 2011-10-1, log service use memeory proprity
setprop sys.service.filelog 1
# ZTE_MODIFY  fanwuxun caoyaobin log services end

$BINDIR/Tgetmem 0x00204000 0x0020DC40 0 > $LOGDIR/resetlog/smem_log_events.lst
$BINDIR/Tgetmem 0x00210000 0x00210BB8 1 > $LOGDIR/resetlog/smem_log_static_events.lst
$BINDIR/Tgetmem 0x00211000 0x0021AC40 2 > $LOGDIR/resetlog/smem_log_power_events.lst
$BINDIR/Tgetmem 0x0021D000 0x0021D12C 3 > $LOGDIR/resetlog/smem_log_sleep_voters.lst
$BINDIR/Tgetmem 0x0021D400 0x0021D450 3 > $LOGDIR/resetlog/smem_log_badblock.txt
$BINDIR/Tgetmem 0x0021D800 0x0021E7A0 4 > $LOGDIR/resetlog/smem_log_err.txt
$BINDIR/Tgetmem 0x00200000 0x00202000 0 > $LOGDIR/resetlog/smem_addr_boot.txt

#ZTE_MODIFY begin edited smem
date > $DEVDIR/logs/kernel_resetlog.txt
cat /proc/lastboot >> $DEVDIR/logs/kernel_resetlog.txt

#debugfs
mount -t debugfs nodev /sys/kernel/debug
cd /sys/kernel/debug/tracing
echo sched_switch > current_tracer
echo 1 > /proc/sys/kernel/ftrace_dump_on_oops
cat /proc/lasttrace > $DEVDIR/logs/trace_data.txt
cd $DEVDIR
$BINDIR/busybox tar cf $LOGDIR/resetlog/resetlog.tar.gz logs/
#echo 1 > tracing_enabled
rm -r $DEVDIR/logs
#ZTE_MODIFY end

while true
do
  chmod 777 $LOGDIR/logcat/*
  $BINDIR/busybox find $LOGDIR | $BINDIR/busybox grep log_kernel.txt
  case "$?" in
      0) echo "linux $?"
         cd $SYSDIR
         $BINDIR/busybox find $LOGDIR -size +256k | $BINDIR/busybox grep log_kernel.txt
         case "$?" in
             0) echo "linux 256k $?"
                 mv $LOGDIR/kernel/log_kernel.last.3.txt $LOGDIR/kernel/log_kernel.last.4.txt
                 mv $LOGDIR/kernel/log_kernel.last.2.txt $LOGDIR/kernel/log_kernel.last.3.txt
                 mv $LOGDIR/kernel/log_kernel.last.1.txt $LOGDIR/kernel/log_kernel.last.2.txt
                 mv $LOGDIR/kernel/log_kernel.txt $LOGDIR/kernel/log_kernel.last.1.txt

                 $BINDIR/busybox cp -r /data/anr/traces.txt $LOGDIR/smem/traces.txt
                 date >> $LOGDIR/smem/traces.txt  
                 
                 $BINDIR/busybox du -sm $LOGDIR | $BINDIR/busybox grep [789]
                 case "$?" in
                    0) echo "du > 7 $?"                       
                       rm -r $LOGDIR/kernel/log_kernel.last.4.txt     
                    ;;
                 esac
         ;;
         esac
         
         dmesg -c >> $LOGDIR/kernel/log_kernel.txt
      ;;
      
      1) echo "linux $?"
         dmesg -c > $LOGDIR/kernel/log_kernel.txt
      ;;
  esac
  
  #backup tombstones
  ls /data/tombstones/*
  case "$?" in
      0) echo "has tombstones"
         cd $SYSDIR
         $BINDIR/busybox tar cf $LOGDIR/logcat/tomb.tar.gz logs/logcat/tomb*
         busybox cp -r /data/tombstones/tombstone* $LOGDIR/logcat/
         rm -r /data/tombstones/tombstone*
  ;;
  esac

  sleep 30
done