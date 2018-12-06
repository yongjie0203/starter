#!/bin/bash
sudo wget https://raw.githubusercontent.com/yongjie0203/starter/master/ssr.sh /etc/init.d/
sudo chmod 755 /etc/init.d/ssr.sh
sudo update-rc.d /etc/init.d/ssr.sh defaults 90

