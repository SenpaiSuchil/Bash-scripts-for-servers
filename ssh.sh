#this script will install the open ssh server, the key of every server
#again plz check the ssh documentation because im still developing the scripts for auto config on each service
#enjoy

command= apt list --installed | grep 'openssh-server*'

service=openssh-server

errorLog="/home/$USER/bashScripts/$service/errorLog.log"


if command -v $command
then 
    echo "ssh server is already installed"
else
    echo "installing ssh server..."
    sleep 2
    if ! [ -d "${erroLog%/*}" ]
    then
        echo "creando directorio"
         mkdir -p ${errorLog%/*} && touch "$errorLog"
         
    fi
    
    echo "el directorio si existe"
     apt-get -y install $service 2> $errorLog
    if [ $? -ne 0 ]
    then    
        echo "an error has been detected plz check $errorLog for details"
    else
        echo "$service has been installed without errors"
    fi
fi