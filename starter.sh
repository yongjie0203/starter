#!/bin/bash
sudo wget https://raw.githubusercontent.com/yongjie0203/starter/master/ssr.sh 
sudo chmod 755 ssr.sh
sudo mv ssr.sh /etc/init.d/
sudo update-rc.d /etc/init.d/ssr.sh defaults 90

