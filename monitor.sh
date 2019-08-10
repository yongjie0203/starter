#! /bin/sh

proc_name="server.py"                             # 待监控进程名

number=`ps -ef | grep $proc_name | grep -v grep | wc -l`
date >> /root/test.log
echo $number >> /root/test.log
if [ $number -eq 0 ]                             # 判断进程是否存在
then
       sh /root/shadowsocksr/logrun.sh             # 重启进程的命令，请相应修改
fi
