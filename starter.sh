#!/bin/bash
cd /root/
sudo wget https://raw.githubusercontent.com/yongjie0203/starter/master/ssr.sh 
sudo chmod 755 ssr.sh
sudo mv ssr.sh /etc/init.d/ssr.sh
cd /etc/init.d/
sudo update-rc.d ssr.sh defaults 90
cd /root/
sudo wget https://raw.githubusercontent.com/yongjie0203/starter/master/monitor.sh
sudo chmod 755 monitor.sh
sudo echo "1 * * * * root sh /root/monitor.sh" >> /etc/crontab
sudo service cron restart
