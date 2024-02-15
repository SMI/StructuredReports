#!/bin/bash
# Enable auth access control in MongoDB server

if [ -f /etc/mongodb.conf ]; then
	# old style config file
	sudo sed -i -e 's/^#auth = true/auth = true/' /etc/mongodb.conf
else
	# new style config file
	if ! grep 'authorization: "enabled"' /etc/mongod.conf > /dev/null; then
		echo 'security:' | sudo tee -a /etc/mongod.conf > /dev/null
		echo '  authorization: "enabled"' | sudo tee -a /etc/mongod.conf > /dev/null
	fi
fi

if [ -f /etc/init.d/mongodb ]; then
	# Old style service
	sudo service mongodb restart
else
	# New style service
	sudo systemctl restart mongod
fi
