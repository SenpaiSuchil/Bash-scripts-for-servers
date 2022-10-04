#!/bin/bash
#this script will install the lamp stack for a web server
#remember to read how to configure all the services becuase this script only install the packages
service1=apache2
service2=mariadb-server

command1= apt list --installed | grep '$service1*'
command2= apt list --installed | grep '$service2*'



errorLog1="/home/$USER/bashScripts/$service1/errorLog.log"
errorLog2="/home/$USER/bashScripts/$service2/errorLog.log"

if command -v $command2
then
    echo "apache2 is already installed on your server :)"
else
    echo "starting the download"
    
    if ! [ -d "${erroLog%/*}" ]
    then
        echo "creando directorio"
         mkdir -p ${errorLog%/*} && touch "$errorLog1"
         mkdir -p ${errorLog%/*} && touch "$errorLog2"
         
    fi
    
    echo "installing $service1 and $service2"
    sleep 2
     apt-get -y install $service1 2> $errorLog1
     apt-get -y install $service1 2> $errorLog2

     apt-get install curl wget gnupg2 ca-certificates lsb-release apt-transport-https -y
     wget https://packages.sury.org/php/apt.gpg
     apt-key add apt.gpg
     echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php7.list
     apt-get update -y
     apt-get install php7.0 php7.0-fpm php7.0-mysql libapache2-mod-php7.0 libapache2-mod-fcgid -y
     apt-get install php7.2 php7.2-fpm php7.2-mysql libapache2-mod-php7.2 -y
     systemctl start php7.0-fpm
     systemctl start php7.2-fpm
     a2enmod actions fcgid alias proxy_fcgi
     systemctl restart apache2
    if [ $? -ne 0 ]
    then    
        echo "an error has been detected plz check $errorLog1 or $errorLog2 for details"
    else
        echo "lamp stack has been installed without errors"
    fi
fi