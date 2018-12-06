#!/bin/bash
### BEGIN INIT INFO
# Provides:          ssr.sh
# Required-start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: starts the shadowsocksr daemon
# Description:       starts shadowsocksr using start-stop-daemon
### END INIT INFO
sh /root/shadowsocksr/logrun.sh
  
exit 0
