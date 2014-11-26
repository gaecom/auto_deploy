#!/bin/bash
set -x
BSFL_VERSION="2.00-beta-2"

init () {

    #
    # Debug mode shows more verbose output to screen and log files.
    # Value: yes or no (y / n)
    #
    DEBUG=no

    #N
    # Syslog style log messages
    #
    if ! defined LOGDATEFORMAT
    then
        LOGDATEFORMAT="%b %e %H:%M:%S"
    fi
    if ! defined LOG_FILE
    then
        LOG_FILE=$0.log
    fi

    #
    # Enable / disable logging to a file
    # Value: yes or no (y / n)
    #
    if ! defined LOG_ENABLED
    then
        LOG_ENABLED=no
    fi
    if ! defined SYSLOG_ENABLED
    then
        SYSLOG_ENABLED=no
    fi
    if ! defined SYSLOG_TAG
    then
        SYSLOG_TAG=$0
    fi

    #
    # Use colours in output.
    #
    RED="tput setaf 1"
    GREEN="tput setaf 2"
    YELLOW="tput setaf 3"
    BLUE="tput setaf 4"
    MAGENTA="tput setaf 5"
    CYAN="tput setaf 6"
    LIGHT_BLUE="$CYAN"
    BOLD="tput bold"
    DEFAULT="tput sgr0"

    RED_BG="tput setab 1"
    GREEN_BG="tput setab 2"
    YELLOW_BG="tput setab 3"
    BLUE_BG="tput setab 4"
    MAGENTA_BG="tput setab 5"
    CYAN_BG="tput setab 6"

    #
    # Bug fix for Bash, parsing exclamation mark.
    #
    set +o histexpand
    #
    # returns 0 if a variable is defined (set)
    # returns 1 if a variable is unset
    #

}

function defined {
    [[ ${!1-X} == ${!1-Y} ]]
}

#
# returns 0 if a variable is defined (set) and value's length > 0
# returns 1 otherwise
#
function has_value {
    if defined $1; then
        if [[ -n ${!1} ]]; then
            return 0
        fi
    fi
    return 1
}

#
# returns 0 if a directory exists
# returns 1 otherwise
#
function directory_exists {
    if [[ -d "$1" ]]; then
        return 0
    fi
    return 1
}
function file_exists {
    if [[ -f "$1" ]]; then
        return 0
    fi
    return 1
}
#
# returns 0 if a (regular) file exists
# returns 1 otherwise
#
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

#
# returns lowercase string
#
function tolower {
    echo "$1" | tr '[:upper:]' '[:lower:]'
}

#
# returns uppercase string
#
function toupper {
    echo "$1" | tr '[:lower:]' '[:upper:]'
}

#
# Only returns the first part of a string, delimited by tabs or spaces
#
function trim {
    echo $1
}

#
# Dummy function to provide usage instructions.
# Override this function if required.
#
show_usage () {

    MESSAGE="$1"
    echo "$MESSAGE"
    exit 1
}

#
# Checks if a variable is set to "y" or "yes".
# Usefull for detecting if a configurable option is set or not.
#
option_enabled () {

    VAR="$1"
    VAR_VALUE=$(eval echo \$$VAR)
    if [[ "$VAR_VALUE" == "y" ]] || [[ "$VAR_VALUE" == "yes" ]]
    then
        return 0
    else
        return 1
    fi
}

#
# The log funcion just puts a string into a file, prepended with a date & time in
# syslog format.
#

log2syslog () {

    if option_enabled  SYSLOG_ENABLED
    then
       MESSAGE="$1"
       logger -t "$SYSLOG_TAG" " $MESSAGE" #The space is not a typo!"
    fi
}

#
# This function writes messages to a log file and/or syslog
# The only argument is a message that has to be logged.
#

log () {

    if option_enabled LOG_ENABLED || option_enabled SYSLOG_ENABLED
    then
        LOG_MESSAGE="$1"
        DATE=`date +"$LOGDATEFORMAT"`

        if has_value LOG_MESSAGE
        then
            LOG_STRING="$DATE $LOG_MESSAGE"
        else
            LOG_STRING="$DATE -- empty log message, no input received --"
        fi

        if option_enabled LOG_ENABLED
        then
            echo "$LOG_STRING" >> "$LOG_FILE"
        fi

        if option_enabled SYSLOG_ENABLED
        then
            #
            # Syslog already prepends a date/time stamp so only the message
            # is logged.
            #
            log2syslog "$LOG_MESSAGE"
        fi
    fi
}


#
# This function basically replaces the 'echo' function in bash scripts.
# The added functionality over echo is logging and using colors.
#
# The first argument is the string / message that must be displayed.
# The second argument is the text color.

msg () {

    MESSAGE="$1"
    COLOR="$2"

    if ! has_value COLOR
    then
        COLOR="$DEFAULT"
    fi

    if has_value "MESSAGE"
    then
        $COLOR
        echo "$MESSAGE"
        $DEFAULT
        log "$MESSAGE"
    else
        echo "-- no message received --"
        log "$MESSAGE"
    fi
}

#
# This function echos a message
# and displays the status at the end of the line.
#
# It can be used to create status messages other
# than the default messages available such as
# OK or FAIL
#
msg_status () {

    MESSAGE="$1"
    STATUS="$2"

    msg "$MESSAGE"
    display_status "$STATUS"
}

#
# These functions are just short hand for messages like
# msg_status "this message is ok" OK
#

#
# The following functions are shorthand for
# msg_status "a message" OK
# msg_status "another message" FAIL


msg_emergency () {

    MESSAGE="$1"
    STATUS="EMERGENCY"
    msg_status "$MESSAGE" "$STATUS"
}

msg_alert () {

    MESSAGE="$1"
    STATUS="ALERT"
    msg_status "$MESSAGE" "$STATUS"
}

msg_critical () {

    MESSAGE="$1"
    STATUS="CRITICAL"
    msg_status "$MESSAGE" "$STATUS"
}

msg_error () {

    MESSAGE="$1"
    STATUS="ERROR"
    msg_status "$MESSAGE" "$STATUS"
}

msg_warning () {

    MESSAGE="$1"
    STATUS="WARNING"
    msg_status "$MESSAGE" "$STATUS"
}

msg_notice () {
    MESSAGE="$1"
    STATUS="NOTICE"
    msg_status "$MESSAGE" "$STATUS"
}

msg_info () {
    MESSAGE="$1"
    STATUS="INFO"
    msg_status "$MESSAGE" "$STATUS"
}

msg_debug () {
    MESSAGE="$1"
    STATUS="DEBUG"
    msg_status "$MESSAGE" "$STATUS"
}

msg_ok () {

    MESSAGE="$1"
    STATUS="OK"
    msg_status "$MESSAGE" "$STATUS"
}

msg_not_ok () {

    MESSAGE="$1"
    STATUS="NOT_OK"
    msg_status "$MESSAGE" "$STATUS"
}

msg_fail () {

    MESSAGE="$1"
    STATUS="FAILED"
    msg_status "$MESSAGE" "$STATUS"
}

msg_success () {
    MESSAGE="$1"
    STATUS="SUCCESS"
    msg_status "$MESSAGE" "$STATUS"
}

msg_passed () {
    MESSAGE="$1"
    STATUS="PASSED"
    msg_status "$MESSAGE" "$STATUS"
}

check_status () {

    CMD="$1"
    STATUS="$2"

    if [ "$STATUS" == "0" ]
    then
        msg_ok "$CMD"
    else
        msg_fail "$CMD"
    fi
}

#
# Private function
#
# This is a function that just positions
# the cursor one row up and to the right.
# It then prints a message with specified
# Color
# It is used for displaying colored status messages on the
# Right side of the screen.
#
# ARG1 = "status message (OK / FAIL)"
# ARG2 = The color in which the status is displayed.
#
raw_status () {

    STATUS="$1"
    COLOR="$2"

    function position_cursor () {

        let RES_COL=`tput cols`-12
        tput cuf $RES_COL
        tput cuu1
    }

    position_cursor
    echo -n "["
    $DEFAULT
    $BOLD
    $COLOR
    echo -n "$STATUS"
    $DEFAULT
    echo "]"
    log "Status = $STATUS"
}

#
# This function converts a status message to a particular color.
#
display_status () {


    STATUS="$1"

    case $STATUS in

    EMERGENCY )
            STATUS="EMERGENCY"
            COLOR="$RED"
            ;;
    ALERT )
            STATUS="  ALERT  "
            COLOR="$RED"
            ;;
    CRITICAL )
            STATUS="CRITICAL "
            COLOR="$RED"
            ;;
    ERROR )
            STATUS="  ERROR  "
            COLOR="$RED"
            ;;

    WARNING )
            STATUS=" WARNING "
            COLOR="$YELLOW"
            ;;

    NOTICE )
            STATUS=" NOTICE  "
            COLOR="$BLUE"
            ;;
    INFO )
            STATUS="  INFO   "
            COLOR="$LIGHT_BLUE"
            ;;
    DEBUG )
            STATUS="  DEBUG  "
            COLOR="$DEFAULT"
            ;;

    OK  )
            STATUS="   OK    "
            COLOR="$GREEN"
            ;;
    NOT_OK)
            STATUS=" NOT OK  "
            COLOR="$RED"
            ;;

    PASSED )
            STATUS=" PASSED  "
            COLOR="$GREEN"
            ;;

    SUCCESS )
            STATUS=" SUCCESS "
            COLOR="$GREEN"
            ;;

    FAILURE | FAILED )
            STATUS=" FAILED  "
            COLOR="$RED"
            ;;

    *)
            STATUS="UNDEFINED"
            COLOR="$YELLOW"
    esac

    raw_status "$STATUS" "$COLOR"
}

#
# Exit with error status
#
bail () {

    ERROR="$?"
    MSG="$1"
    if [ ! "$ERROR" = "0" ]
    then
        msg_fail "$MSG"
        exit "$ERROR"
    fi
}

#
# This function executes a command provided as a parameter
# The function then displays if the command succeeded or not.
#
cmd () {

    COMMAND="$1"
    msg "Executing: $COMMAND"

    RESULT=`$COMMAND 2>&1`
    ERROR="$?"

    MSG="Command: ${COMMAND:0:29}..."

    tput cuu1

    if [ "$ERROR" == "0" ]
    then
        msg_ok "$MSG"
        if [ "$DEBUG" == "1" ]
        then
            msg "$RESULT"
        fi
    else
        msg_fail "$MSG"
        log "$RESULT"
    fi

    return "$ERROR"
}

#
# These functions can be used for timing how long (a) command(s) take to
# execute.
#
now () {

   echo $(date +%s)
}

elapsed () {

    START="$1"
    STOP="$2"

    echo $(( STOP - START ))
}

#
# Prints an error message ($2) to stderr and exits with the return code ($1).
# The message is also logged.
#
function die {
    local -r err_code="$1"
    local -r err_msg="$2"
    local -r err_caller="${3:-$(caller 0)}"

    msg_fail "ERROR: $err_msg"
    msg_fail "ERROR: At line $err_caller"
    msg_fail "ERROR: Error code = $err_code"
    exit "$err_code"
} >&2 # function writes to stderr

#
# Check if a return code ($1) indicates an error (i.e. >0) and prints an error
# message ($2) to stderr and exits with the return code ($1).
# The error is also logged.
#
# Die if error code is false.
#
function die_if_false {
    local -r err_code=$1
    local -r err_msg=$2
    local -r err_caller=$(caller 0)

    if [[ "$err_code" != "0" ]]
    then
        die $err_code "$err_msg" "$err_caller"
    fi
} >&2 # function writes to stderr

#
# Dies when error code is true
#
function die_if_true {
    local -r err_code=$1
    local -r err_msg=$2
    local -r err_caller=$(caller 0)

    if [[ "$err_code" == "0" ]]
    then
        die $err_code "$err_msg" "$err_caller"
    fi
} >&2 # function writes to stderr

#
# Replace some text inside a string.
#
function str_replace () {
    local ORIG="$1"
    local DEST="$2"
    local DATA="$3"

    echo "$DATA" | sed "s/$ORIG/$DEST/g"
}

#
# Replace string of text in file.
# Uses the ed editor to replace the string.
#
# arg1 = string to be matched
# arg2 = new string that replaces matched string
# arg3 = file to operate on.
#
function str_replace_in_file () {
    local ORIG="$1"
    local DEST="$2"
    local FILE="$3"

    has_value FILE
    die_if_false $? "Empty argument 'file'"
    file_exists "$FILE"
    die_if_false $? "File does not exist"

    printf ",s/$ORIG/$DEST/g\nw\nQ" | ed -s "$FILE" > /dev/null 2>&1
    return "$?"
}
download_pkg(){

pkgDir=${PKGDIR:-.}
#usage:iPkg2 pkgurl pkgname option(opt)
    declare -A cmds=([gz]="tar xvzf" [tgz]="tar xvzf" [zip]="unzip" [bz2]="tar xvjf")
    [ $# -lt 1 ] && msg_alert "parameters less than 1"  && return 1
    local installurl=$1
    local installfile=''
    local installdir=''
    [[ $2 = *.gz || $2 = *.bz2 || $2 = *.zip || $2 = *.tgz ]] && installfile=$2 && shift
    shift
    [ -z $installfile ] && installfile=`basename $installurl`
    options="$@"



    ext=${installfile##*.}

    [ ! -e $pkgDir/$installfile ] && curl -C - -k -L   "$installurl" -o $pkgDir/$installfile

    [ ! -e $installfile ] && cp $pkgDir/$installfile $installfile
    echo $installfile
 

}
dezip_pkg(){
    pkgDir=${PKGDIR:-.}

    declare -A cmds=([gz]="tar xvzf" [tgz]="tar xvzf" [zip]="unzip" [bz2]="tar xvjf")
    [ $# -lt 1 ] && msg_alert "parameters less than 1"  && return 1
    local installurl=$1
    local installfile=''
    local installdir=''
    [[ $2 = *.gz || $2 = *.bz2 || $2 = *.zip || $2 = *.tgz ]] && installfile=$2 && shift
    shift
    [ -z $installfile ] && installfile=`basename $installurl`
    options="$@"



   ext=${installfile##*.}

    baseFile=${installfile%%.$ext}
    baseFile=${baseFile%.tar}
   # if file not exist in pkgDir
   # 
   file_size=$(du $pkgDir/$installfile | awk '{print $1}');
  
   [[ ! -e $pkgDir/$installfile || $file_size == 0 ]] && curl -C - -k -L   "$installurl" -o $pkgDir/$installfile

   [ ! -e $installfile ] && cp $pkgDir/$installfile $installfile
   [[ ! -z ${cmds[$ext]} ]] && ${cmds[$ext]} $installfile


   # installdir=`tar --exclude='*/*' -tf $installfile`
   if [ $ext == 'zip' ];then
   installdir=`unzip -v $installfile | grep /|head -1|awk '{print $8}'`
   elif [[ $ext == 'gz' || $ext == 'tgz' || $ext == 'bz2' ]];then
   installdir=`tar  -tf $installfile|grep /|head -1`
   if [ -z "$installdir" ];then
        installdir=$baseFile
    else
       installdir=${installdir%%/*}
    fi

   fi
  
   echo $installdir


}
config_pkg(){
     pkgDir=${PKGDIR:-.}
    declare -A cmds=([gz]="tar xvzf" [tgz]="tar xvzf" [zip]="unzip" [bz2]="tar xvjf")
    [ $# -lt 1 ] && msg_alert "parameters less than 1"  && return 1
    local installurl=$1
    local installfile=''
    local installdir=''
    [[ $2 = *.gz || $2 = *.bz2 || $2 = *.zip || $2 = *.tgz ]] && installfile=$2 && shift
    shift
    [ -z $installfile ] && installfile=`basename $installurl`
    options="$@"

    echo "installurl $installurl $installfile"


    ext=${installfile##*.}

    [ ! -e $pkgDir/$installfile ] && curl -C - -k -L   "$installurl" -o $pkgDir/$installfile
    echo -e "start install $installfile....\n"
    [ ! -e $installfile ] && cp $pkgDir/$installfile $installfile

   [[ ! -z ${cmds[$ext]} ]] && ${cmds[$ext]} $installfile
   # installdir=`tar --exclude='*/*' -tf $installfile`
 if [ $ext == 'zip' ];then
   installdir=`unzip -v $installfile | grep /|head -1|awk '{print $8}'`
   elif [[ $ext == 'gz' || $ext == 'tgz' || $ext == 'bz2' ]];then
   installdir=`tar  -tf $installfile|grep /|head -1`
   installLastdir=`tar  -tf $installfile|grep /|tail -1`
   instDir2=`echo $installdir|cut -d/ -f1`
   instLastDir2=`echo $installLastdir|cut -d/ -f1`
   if [ "$instDir2" != "$instLastDir2" ];then
        installdir="."
      else

      installdir=${installdir%%/*}  
      if [ $instDir2 == "." ];then

      installdir="`echo $installdir|cut -d/ -f2`"
      fi
   fi
    
   fi
  
    cd $installdir
    set +e
    #[ -e "configure.ac" ] &&  autoreconf -fvi
     [ -e "configure.ac" ] &&  autoreconf -fvi >/dev/nul 2&>1
    [ -e "config.m4" ] && [[ ! -z `grep -E "PHP_" config.m4` ]] && phpize >/dev/nul 2&>1
    ./configure $options 
   
set -e -v
}
cd_pkg(){
 pkgDir=${PKGDIR:-.}
     declare -A cmds=([gz]="tar xvzf" [tgz]="tar xvzf" [zip]="unzip" [bz2]="tar xvjf")
    [ $# -lt 1 ] && msg_alert "parameters less than 1"  && return 1
    local installurl=$1
    local installfile=''
    local installdir=''
    [[ $2 = *.gz || $2 = *.bz2 || $2 = *.zip || $2 = *.tgz ]] && installfile=$2 && shift
    shift
    [ -z $installfile ] && installfile=`basename $installurl`
    options="$@"

    echo "installurl $installurl $installfile"


    ext=${installfile##*.}

  

   
    [ ! -e $pkgDir/$installfile ] && curl -C - -k -L   "$installurl" -o $pkgDir/$installfile
    echo -e "start install $installfile....\n"

    [ ! -e $installfile ] && cp $pkgDir/$installfile $installfile

   [[ ! -z ${cmds[$ext]} ]] && ${cmds[$ext]} $installfile
   # installdir=`tar --exclude='*/*' -tf $installfile`
   if [ $ext == 'zip' ];then
   installdir=`unzip -v $installfile | grep /|head -1|awk '{print $8}'`
   elif [[ $ext == 'gz' || $ext == 'tgz' || $ext == 'bz2' ]];then
   installdir=`tar  -tf $installfile|grep /|head -1`
   
    installdir=${installdir%%/*}
   fi
  
    cd $installdir

}
inst_pkg()
{
     pkgDir=${PKGDIR:-.}
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
   installdir=`unzip -v $installfile | grep /|head -1|awk '{print $8}'`
   elif [[ $ext == 'gz' || $ext == 'tgz' || $ext == 'bz2' ]];then
   installdir=`tar  -tf $installfile|grep /|head -1`
   installLastdir=`tar  -tf $installfile|grep /|tail -1`
   instDir2=`echo $installdir|cut -d/ -f1`
   instLastDir2=`echo $installLastdir|cut -d/ -f1`
   if [ "$instDir2" != "$instLastDir2" ];then
        installdir="."
      else

      installdir=${installdir%%/*}  
      if [ $instDir2 == "." ];then

      installdir="`echo $installdir|cut -d/ -f2`"
      fi
   fi
    
   fi
    set +e
    cd $installdir
    [ -e "configure.ac" ] &&  autoreconf -fvi >/dev/nul 2&>1
    [ -e "config.m4" ] && [[ ! -z `grep -E "PHP_" config.m4` ]] && phpize >/dev/nul 2&>1
    ./configure $options 
    make
    sudo make install
    sudo ldconfig
    msg_notice "finish installing $installfile....\n"
    cd ..
    echo $installdir
    set -e -v
}
mkdir2(){
    [ ! -e "$1" ] && mkdir -p $1
}
inst_src_rpm()
{
    [ $# -lt 1 ] && msg_alert "parameters less than 1"  && return 1
    installurl=$1
    installfile=`basename $installurl`
    [ ! -e $installfile ] && curl -L "$installurl" -o $installfile
    rpm --rebuild $installfile
    cd /usr/src/redhat/RPM/

}
z_implode()
{

    local sep=${2:-,}
    echo ${1// /$sep}

}
z_add_sysuser()
{
   [[ -z `grep "$1" /etc/passwd` ]] && useradd -s /sbin/nologin -r -U -M $1
}
z_count_bynetstate()
{

    netstat -n|awk '/^tcp/ {++S[$NF]} END {for(a in S) print a,S[a]}'
}
z_init_alias()
{
type chks2 >/dev/null 2>&1
if [ $? != 0 ];then
cat ->>$HOME/.bashrc<<EOF
function chks2 {
  ps -ef|grep [n]ginx  >/dev/null 2>&1 && echo "nginx running"
  ps -ef|grep [m]emcache >/dev/null 2>&1 && echo "memcache running"
  ps -ef|grep [m]ongod >/dev/null 2>&1 && echo "mongod running"
  ps -ef|grep [p]hp-fpm >/dev/null 2>&1 && echo "php-fpm running"
  ps -ef|grep [m]ysql >/dev/null 2>&1 && echo "mysql running"
}
EOF
fi
type lb2 >/dev/null 2>&1 || echo 'alias lb2="vi $HOME/.bashrc"'>>$HOME/.bashrc
type eb2 >/dev/null 2>&1 || echo 'alias eb2=". $HOME/.bashrc"'>>$HOME/.bashrc

type ng2 >/dev/null 2>&1 || echo 'alias ng2="service nginx restart"'>>$HOME/.bashrc
type my2 >/dev/null 2>&1 || echo 'alias my2="service mysql restart"'>>$HOME/.bashrc
type fp2 >/dev/null 2>&1 || echo 'alias fp2="killall -9 php-fpm;php-fpm &"'>>$HOME/.bashrc
type me2 >/dev/null 2>&1 || echo 'alias me2="killall -9 memcached;memcached -u memcache -d"'>>$HOME/.bashrc
. $HOME/.bashrc
}
#$1:usergroup
#$2 user
z_mod_user()
{
usermod -a -G $1 $2
}
z_init_env()
{
if [[ ! $PATH =~ "z_path_included" ]];then
export PATH=z_path_included:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:/opt/local/sbin
fi



grep "/usr/local/lib" /etc/ld.so.conf.d/user_lib_local.conf >/dev/null 2>&1 || echo "/usr/local/lib">>/etc/ld.so.conf.d/user_lib_local.conf

z_init_vars
z_init_alias
z_init_swap

}

z_init_vars() {
    export MEMSIZE=z_total_mem
    export SWAPSIZE=z_total_swap

}
z_total_mem(){

    echo `free -m|grep Mem|awk '{print $2}'`
}
z_total_swap(){

    echo `free -m|grep Swap|awk '{print $2}'`
}
z_init_swap(){
   
    if [ $SWAPSIZE -lt 10 ];then
    sudo fallocate -l 2g /mnt/2G.swap
    sudo dd if=/dev/zero of=/mnt/2G.swap bs=1024 count=2097152
    sudo chmod 600 /mnt/2G.swap
    sudo mkswap /mnt/2G.swap
    sudo swapon /mnt/2G.swap
    echo /mnt/2G.swap none swap sw 0 0>>/etc/fstab
    
    fi
}
grab_bytes() {

    bs=100000
    infile=$1
    skip=$2
    length=$3

    (
      #skip some bytes
      dd bs=1 skip=$skip count=0
      #output int block bytes
      dd bs=$bs count=$(($length / $bs))
      #output reminder bytes
      dd bs=$(($length % $bs)) count=1
    ) < "$infile"


}
argCntChk(){
    num=$(($1 - 1))
    [ $# -lt $num ] && echo $usage && exit 

}
progExist(){ 
    for x in $@;do 
    [[ -z `which $x` ]] && echo "$x not exist" && exit
done
}
inst_jdk8() {
    jdkdir=`dezip_pkg $jdk8`
    sudo mv $jdkdir /usr/local/jdk`ls|grep jdk|cut -d"-" -f2|cut -d"u" -f1`
    echo "export JAVA_HOME=$jdkdir">>$HOME/.bashrc
    echo "export CLASSPATH=$jdkdir/lib/dt.jar:$jdkdir/lib/tools.jar">>$HOME/.bashrc
    echo "export PATH=$PATH:$jdkdir/bin">>$HOME/.bashrc
}

init
