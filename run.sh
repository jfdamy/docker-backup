#!/bin/sh

if [ -z "$CRON_TIME" ]; then
	if [[ "$RESTORE" == "true" ]]; then
	  ./restore.sh
	else
	  ./backup.sh
	fi
else 
	echo "${CRON_TIME} /backup.sh >> /dockup.log 2>&1" > /crontab.conf
	crontab  /crontab.conf
	echo "=> Running cron job"
	exec crond -l 2 -f
fi