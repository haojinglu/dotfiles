function rmi_none() { 
    docker rmi $(docker images | grep "none" | awk '{ print $3 }') 
}
function rm_exited_ctnr() {
     docker rm $(docker ps -a | grep Exit | awk '{ print $1 }') 
}
function ind() { docker exec -it $1 /bin/bash }
