inst_pkg()
{
     pkgDir=${1:-.}
    #usage:iPkg2 pkgurl pkgname option(opt)
    declare -A cmds=([gz]="tar xvzf" [tgz]="tar xvzf" [zip]="unzip" [bz2]="tar xvjf")
    [ $# -lt 1 ] && msg_alert "parameters less than 1"  && return 1 && exit
    local installurl=$1
    local installfile=''
    local installdir=''
    [[ $2 = *.gz || $2 = *.bz2 || $2 = *.zip || $2 = *.tgz ]] && installfile=$2 && shift
    shift
    [ -z $installfile ] && installfile=`basename $installurl`
    options="$@"

    echo "installurl $installurl $installfile"


    ext=${installfile##*.}

    [ ! -e $pkgDir/$installfile ] && curl -C - -k -L  "$installurl"   -o $pkgDir/$installfile
    echo -e "start install $installfile....\n"


   [ ! -e $installfile ] && cp $pkgDir/$installfile $installfile
   [[ ! -z ${cmds[$ext]} ]] && ${cmds[$ext]} $installfile

   # installdir=`tar --exclude='*/*' -tf $installfile`
   if [ $ext == 'zip' ];then
   installdir="`unzip -v $installfile | grep /|head -1|awk '{print $8}'`"
   elif [[ $ext == 'gz' || $ext == 'tgz' || $ext == 'bz2' ]];then
   installdir="`tar  -tf $installfile|grep /|head -1`"
   [[ "$installdir" = .* ]] && installdir="`tar  -tf $installfile|grep /|head -1`"
   [[ "$installdir" = .* ]] && installdir="`tar  -tf $installfile|grep /|head -2|tail -1`"
   [[ "$installdir" = .* ]] && installdir="`tar  -tf $installfile|grep /|head -3|tail -1`"


   installLastdir="`tar  -tf $installfile|grep /|tail -1`"
   instDir2="`echo $installdir|cut -d/ -f1`"
   instLastDir2="`echo $installLastdir|cut -d/ -f1`"
  
   if [[ "$instDir2" != "$instLastDir2" && -e "./config.m4" ]];then
        installdir="."
      else

      installdir="${installdir%%/*}"

      if [ "$instDir2" == "." ];then

      installdir=`echo "$installdir"|cut -d/ -f2`
      fi
   fi
    
   fi

    set +e
    echo "installdir","$installdir"
    cd "$installdir"
    echo `pwd`
    [ -e "configure.ac" ] &&  autoreconf -fvi >/dev/nul 2&>1
    [ -e "config.m4" ] && [[ ! -z `grep -E "PHP_" config.m4` ]] && echo "phpize" && phpize >/dev/nul 2&>1
    ./configure $options 
    make
    make install
    ldconfig

    echo "finish installing $installfile....\n"
    cd ..
    echo $installdir
    set -e -v
}
#yum install memcached=https://launchpad.net/libmemcached/1.0/1.0.18/+download/libmemcached-1.0.18.tar.gz
phpext=/usr/local/lib/php/extensions/
[ ! -e $phpext ] && mkdir -p -m 755 $phpext
export EXTENSION_DIR="$phpext"
for pkg in /tmp/pkgs/*.tgz;do
basePkg=`basename $pkg`
if [[ "$basePkg" = "yar.tgz" ]];
then
inst_pkg /tmp/pkgs $basePkg  --enable-msgpack
else 
inst_pkg /tmp/pkgs $basePkg
fi
done
