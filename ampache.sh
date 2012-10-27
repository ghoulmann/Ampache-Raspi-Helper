#!/bin/bash -ex

#Check for Root

LUID=$(id -u)
if [[ $LUID -ne 0 ]]; then
	echo "$0 must be run as root"
	exit 1
fi


#Set hostname
HOSTNAME=ampache
echo "$HOSTNAME" > /etc/hostname
sed -i "s|127.0.1.1 \(.*\)|127.0.1.1 $HOSTNAME|" /etc/hosts

#Update and Install function
#install function
install ()
{
	apt-get update
	DEBIAN_FRONTEND=noninteractive apt-get -y \
        install $@
}

#Install from Repos - not preseeded
install mysql-server ampache ampache-themes

#php.ini to meet Ampache recommendations
sed -i "s|max_execution_time = 30|max_execution_time = 60|" /etc/php5/apache2/php.ini

