DIRECTORY=/usr/local/bin


install:
	cp  docker-service-job-clean.sh ${DIRECTORY}/docker-service-job-clean
	chmod +x ${DIRECTORY}/docker-service-job-clean

setup-cron:
	echo "0 10 * * * root docker-service-job-clean" >> /etc/crontab
