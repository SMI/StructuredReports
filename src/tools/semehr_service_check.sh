#!/bin/bash
# Test the SemEHR web service is accessible internally and externally
# and test the API responds given the configured password.
# XXX does not properly check the postgresql tables.
# XXX does not properly check an actual query sent to the API.

internal_port=$(sed -n '/ExecStart/s,.*-p \([0-9]*\).*,\1,p' /etc/systemd/system/semehr.service)
if [ "$internal_port" == "" ]; then
	echo "ERROR: cannot read port from config file /etc/systemd/system/semehr.service"
	exit 1
fi
echo "Internal port: $internal_port"

external_port=$(sed -n '/^[ ]*listen /s,.*listen \([0-9]*\).*,\1,p' /etc/nginx/sites-enabled/semehr)
if [ "$external_port" == "" ]; then
        echo "ERROR: cannot read port from config file /etc/nginx/sites-enabled/semehr"
        exit 1
fi
echo "External port: $external_port"

password="$(jq -r '.passphrase' < /opt/semehr/CogStack-SemEHR/RESTful_service/conf/settings.json)"
if [ "$password" == "" ]; then
	echo "ERROR: cannot read password from /opt/semehr/CogStack-SemEHR/RESTful_service/conf/settings.json"
	exit 1
fi
echo "Password: $password"

echo "-------------------------------------------------------------------"
echo "Testing internal service is running on port ${internal_port}"
if ! curl -k -q --no-progress-meter -o /dev/null http://localhost:${internal_port}/vis/; then
	echo "-------------------------------------------------------------------"
	echo "Checking semehr service status"
	systemctl status semehr
	echo "-------------------------------------------------------------------"
	echo "To see log: sudo journalctl -u semehr"
	echo "To restart: sudo systemctl restart semehr"
	echo "-------------------------------------------------------------------"
	exit 1
fi
echo "OK - the service home page is accessible on the internal port"

echo "-------------------------------------------------------------------"
echo "Testing service is accessible via nginx on port ${external_port}"
if ! curl -k -q --no-progress-meter -o /dev/null https://localhost:${external_port}/vis/; then
	echo "-------------------------------------------------------------------"
	echo "Checking for nginx process in output from 'ps'"
	if pgrep -cf "nginx: master" > /dev/null; then
		echo "nginx seems to be running but service is not accessible"
		echo "try checking config in /etc/nginx/sites-enabled"
		exit 1
	fi
	echo "-------------------------------------------------------------------"
	echo "Checking nginx service status"
	systemctl status nginx
	echo "-------------------------------------------------------------------"
	echo "To see log: sudo journalctl -u nginx"
	echo "To restart: sudo systemctl restart nginx"
	echo "-------------------------------------------------------------------"
	exit 1
fi
echo "OK - the service home page is accessible via nginx"

echo "-------------------------------------------------------------------"
echo "Testing PostgreSQL"
if ! netstat --tcp -4 --listening | grep -q postgresql ; then
	systemctl status postgresql
	echo "-------------------------------------------------------------------"
	echo "To see log: sudo journalctl -u postgresql"
	echo "To restart: sudo systemctl restart postgresql"
	echo "-------------------------------------------------------------------"
	exit 1
fi
echo "OK - postgresql is listening on its default port number"

echo "-------------------------------------------------------------------"
echo "Testing API"
res=$(curl -k -q --no-progress-meter https://localhost:${external_port}/api/need_passphrase/)
if [ "$res" == "true" ]; then
	encoded=$(printf "${password}" | sha256sum | awk '{print$1}')
	res=$(curl -k -q --no-progress-meter https://localhost:${external_port}/api/check_phrase/${encoded}/)
	if [ "$res" != "true" ]; then
		echo "ERROR: password from config does not work in API"
		exit 1
	fi
elif [ "$res" == "false" ]; then
	echo "SemEHR service API does not require a password"
else
	echo "ERROR: the API did not return true or false to a check_phrase request"
	echo "$res"
	exit 1
fi

echo "OK - the SemEHR service seems OK"
exit 0
