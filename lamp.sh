#!/bin/bash
#this script will install the lamp stack for a web server
#remember to read how to configure all the services becuase this script only install the packages
errorLog="/home/$USER/bashScripts/lamp/errorLog.log"
apachePath=/etc/apache2/apache2.conf


if [ -d $apachePath ]
then
    echo "apache2 is already installed on your server :)"
else
    echo "starting the download"
    if ! [ -d "${erroLog%/*}" ]
    then
        echo "creando directorio"
         mkdir -p ${errorLog%/*} && touch "$errorLog"
         
    fi
    
    echo "el directorio si existe"
     apt-get -y install apache2 2> $errorLog
    if [ $? -ne 0 ]
    then    
        echo "an error has been detected plz check $errorLog for details"
    else
        echo "apache2 has been installed without errors"
    fi
fi