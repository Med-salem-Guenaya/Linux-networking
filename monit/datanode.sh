#!/bin/bash
 case $1 in
    start)
       #echo $$ > /home/iotdb/confignode.pid;
       bash /home/user/apache-iotdb-1.3.0-server-bin/sbin/start-datanode.sh
       jps | grep "DataNode" | cut -d " " -f 1 > /home/user/datanode.pid
       ;;
     stop)
       #kill $(cat confignode.pid);
       bash /home/user/apache-iotdb-1.3.0-server-bin/sbin/stop-datanode.sh
       rm /home/user/datanode.pid
       ;;
     *)
       echo "usage: confignode.sh {start|stop}" ;;
 esac
 exit 0
