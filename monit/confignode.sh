#!/bin/bash
 case $1 in
    start)
       #echo $$ > /home/iotdb/confignode.pid;
       bash /home/user/apache-iotdb-1.3.0-confignode-bin/sbin/start-confignode.sh
       jps | grep "ConfigNode" | cut -d " " -f 1 > /home/user/confignode.pid
       ;;
     stop)
       #kill $(cat confignode.pid);
       bash /home/user/apache-iotdb-1.3.0-confignode-bin/sbin/stop-confignode.sh
       rm confignode.pid
       ;;
     *)
       echo "usage: confignode.sh {start|stop}" ;;
 esac
 exit 0
