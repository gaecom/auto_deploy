. config.sh
mdz2 ()
{

    fileName="mongodb.tar.bz2"
    [ $# -lt 1 ] && echo -e "backup mongodb $0 mongoDbName" && return;
 
    path=${2:-''};
    bkpath="dump/$db";
    [ ! -z "$path" ] && bkpath=$path && path="-o $path";
 
   
    mongodump --forceTableScan -d $db -u"${rmongo_user}" -p"${rmongo_pwd}" $path
    tar cvjf "$fileName" $bkpath;
    echo "$fileName"
}
function file_not_empty {

    
  
    if [[ -f "$1" ]]; then
        file_size=$(du $1 | awk '{print $1}');
        if [ $file_size != 0 ];then
             echo 0    
        else 
          echo 1    
        fi
    else
        echo 1         
    fi
   
}

function bk2 {

  declare -A dbArr

  dbName=${1:-wrtc_start}
  projectName=$dbName
  ftpdir=/george/
  user=george
  myname=george
  password=george2811
  mysql_user=root 
  mysql_pwd=chjade
  

  
  dbArr=([wrtc_start]="vconf" [snow]="snow" [fogpod]="fogpod" [lighthouse]="lighthouse" [ninja]="ninja")
  project="$HOME/htdocs/$projectName"
  if [ ! -z "`echo $projectName|grep '/'`" ];then
  
    project=$projectName
    projectName=`basename $projectName`
  fi
  
  
  
  

  date2=`date '+%Y%m%d%H'`
 
  
  dstdir="`pwd`/build"
  [ ! -d $dstdir ] && mkdir -p $dstdir
  branch=""

  tarfile="${projectName}.tar"
  dstTarFile="${dstdir}/${tarfile}"
  sqlfile="my.sql"
  dstSqlFile="${dstdir}/my.sql"
    
 if [[ `file_not_empty "$dstTarFile"` == "1" ]];then

        echo "start tar $branch $tarfile" &&  echo $(cd $project;[ -z $2 ] && branch=`git branch|grep "*"|tr -d "* "`;git archive --format=tar $branch> $dstTarFile)
   
  fi
  [ ! -z "${dbArr[$projectName]}" ] && dbName="$projectName"

 

  mysqldump -u"${mysql_user}" -p"${mysql_pwd}" "$dbName">$dstSqlFile 
  cp -f $dstSqlFile $project/

  cd $project && tar uvf ${dstdir}/$tarfile "$sqlfile"
  # if [ ! -z "${dbArr[$projectName]}" -a "`file_not_empty "$dstSqlFile"`" = "1" ];then
    
      
  #     #mysqldump -u"${mysql_user}" -p"${mysql_pwd}" "${dbArr[$projectName]}">$dstSqlFile 

      
  # fi
  fileName="mongodb.tar.bz2"
  [ $# -lt 1 ] && echo -e "backup mongodb $0 mongoDbName" && return;

  path=${2:-''};
  bkpath="dump/$projectName";
  [ ! -z "$path" ] && bkpath=$path && path="-o $path";

 
  mongodump --forceTableScan -d $db -u"${rmongo_user}" -p"${rmongo_pwd}" $path
  tar cvjf "$fileName" $bkpath;
  


  tar uvf ${dstdir}/$tarfile "${fileName}"

  bzip2 -9 -f $dstTarFile
  
 
  
}

bk2 ninja

