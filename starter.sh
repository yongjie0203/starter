#!/bin/bash
cd /root/
sudo wget https://raw.githubusercontent.com/yongjie0203/starter/master/ssr.sh 
sudo chmod 755 ssr.sh
sudo mv ssr.sh /etc/init.d/ssr.sh
cd /etc/init.d/
sudo update-rc.d ssr.sh defaults 90
cd /root/
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
apt-get install ntp
ntpdate cn.pool.ntp.org
sudo wget https://raw.githubusercontent.com/yongjie0203/starter/master/monitor.sh
sudo chmod 755 monitor.sh
sudo echo "30 5 * * * root /sbin/reboot" >> /etc/crontab
sudo echo "* * * * *  root sh /root/monitor.sh" >> /etc/crontab
sudo service cron restart
cat /etc/crontab
