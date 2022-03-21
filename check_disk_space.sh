#!/bin/bash

MOUNT_POINT="/"				#Your mount point to check
WARN_MESSEGE_VALUE=50 			#percentage
CRITICAL_MESSEGE_VALUE=80 		#percentage

check_messege=`df $MOUNT_POINT | tail -n 1` 
set -- $check_messege
used_disk_proc=${5}
used_disk=`echo $used_disk_proc | sed 's/\%//'`

if [ $used_disk -ge $CRITICAL_MESSEGE_VALUE ]
then
        echo -e "\033[41mYour disk is over $CRITICAL_MESSEGE_VALUE full! ($MOUNT_POINT) - $used_disk_proc\033[0m"        #Red backgroud critical messege
elif [ $used_disk -ge $WARN_MESSEGE_VALUE ]
then
	echo -e "\033[0;33mYour disk is over $WARN_MESSEGE_VALUE full! ($MOUNT_POINT) - $used_disk_proc\033[0m"		 #Yellow warn messege
else
	echo "Your disk is $used_disk_proc full! ($MOUNT_POINT)"
fi
