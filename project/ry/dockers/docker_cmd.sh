#!/bin/bash
function de2 {
   [ $# -lt 1 ] && echo "$0 1(container id)" && return
  
}
### remove a container
function drmc2 {
       [ $# -lt 1 ] && echo -e "rm containers\n$0 1(container id)" && return

  docker stop $1
  docker rm $1
}
function drmi2 {
     
  [ $# -lt 1 ] && echo -e "rm images\n$0 1(container id)" && return
  image=$1
  containers=`docker ps -a|grep -i $image|awk '{print $1}'|tr '\n' ' '`
  docker rm containers
  docker rmi $1

}


#remove all stopped containers
function drmac2 {
  docker rm $(docker ps -a -q)

}



#docker run container
function drc2 {
         
  [ $# -lt 1 ] && echo -e "run containers\n$0 1(container id)" && return
  docker start $1
  docker exec -it $1 bash
}
#remove last container
function drcl2 {
  local lastDocker=`docker ps -l|tail -1|awk '{print $1}'`
  docker start $lastDocker
  docker exec -it $lastDocker bash
}

# remove all untaged images
function drmn2 {
  docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
}
