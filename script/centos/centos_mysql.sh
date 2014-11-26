#!/bin/bash

#for mysql benchmark
#perl -MCPAN -e 'install DBI'
#perl -MCPAN -e 'install DBD::mysql'
#perl -MCPAN -e 'install YAML'
#如果安装不了,cpan,进入cpan安装install YAML
set -e -v
. common.sh
. pkgs.sh
. config.sh

z_init_env

[ "`id -u mysql`" == "" ] && useradd  -r -s /sbin/nologin -M -U mysql

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin


#file_url=http://cdn.mysql.com/Downloads/MySQL-5.6/MySQL-5.6.12-1.el6.src.rpm
# file_url=http://cdn.mysql.com/Downloads/MySQL-5.5/MySQL-5.5.32-1.el6.src.rpm
# filename=`basename $file_url`
# [ ! -e $filename ] && curl -L "$file_url" -o "$filename"
# rpm -ivh $filename
# rpmbuild -bp ~/rpmbuild/SPECS/*.spec

cd_pkg $mysql
##make patch
#sed  -i 's#\(pfs_connect_attr-t.*\) ${ZLIB_LIBRARY}#\1 z#' storage/perfschema/unittest/CMakeLists.txt
#rpmbuild --rebuild --clean $filename
# basedir=~/rpmbuild/BUILD/mysql-5.5.32/mysql-5.5.32
# cd $basedir
#sed -i 's/{SSL_LIBRARIES}/& ${ZLIB_LIBRARY}/' mysys_ssl/CMakeLists.txt
#sed -i 's/{SSL_LIBRARIES}/& ${ZLIB_LIBRARY}/' storage/perfschema/unittest/CMakeLists.txt
#sed  -i 's#\(pfs_connect_attr-t.*\) ${ZLIB_LIBRARY}#\1 z#' storage/perfschema/unittest/CMakeLists.txt

#test lib exist or not using command line "gcc -l123 --verbose."
#static link improve 13%

# CXX=gcc \
# CHOST="x86_64-pc-linux-gnu" \
# CFLAGS=" -O3  \
# -fomit-frame-pointer \
# -pipe \
# -march=nocona \
# -mfpmath=sse \
# -m128bit-long-double \
# -mmmx \
# -msse \
# -msse2 \
# -maccumulate-outgoing-args \
# -m64 \
# -ftree-loop-linear \
# -fprefetch-loop-arrays \
# -freg-struct-return \
# -fgcse-sm \
# -fgcse-las \
# -frename-registers \
# -fforce-addr \
# -fivopts \
# -ftree-vectorize \
# -ftracer \
# -frename-registers \
# -minline-all-stringops \
# -fno-exceptions \
# -fbranch-target-load-optimize2" \
# CXXFLAGS="${CFLAGS}" \
cmake -DWITH_SERVER_SUFFIX=SNOW_EDITION \
-DMYSQL_USER=mysql \
-DWITH_INNOBASE_STORAGE_ENGINE=1 \
-DWITH_ARCHIVE_STORAGE_ENGINE=1 \
-DWITH_BLACKHOLE_STORAGE_ENGINE=1 \
-DWITH_MYISAM_STORAGE_ENGINE=1 \
-DWITH_PERFSCHEMA_STORAGE_ENGINE=1 \
-DWITH_CHARSET=utf-8 \
-DWITH_COLLATION=utf8_general_ci \
-DWITH_EXTRA_CHARSETS=GBK,GB2312,UTF8,ASCII \
-DWITH_BIG_TABLES=1 \
-DWITH_FAST_MUTEXES=1 \
-DWITH_ZLIB_DIR=BUNDLED \
-DENABLE_ASSEMBLER=1 \
-DENABLE_PROFILING=1 \
-DENABLE_LOCAL_INFILE=1 \
-DENABLE_THREAD_SAFE_CLIENT=1 \
-DWITH_READLINE=1 \
-DWITH_PTHREAD=1 \
-DWITH_SSL=bundled \
-DWITH_ZLIB=system \
-DWITH_CLIENT_LDFLAGS=-all-static \
-DWITH_MYSQLD_LDFLAGS=-all-static \
-DWITH_MYSQLD_LDFLAGS=-ltcmalloc \
-DWITHOUT_GEOMETRY=1 \
-DWITHOUT_DEBUG=1 \
-DWITHOUT_NDB_DEBUG=1 \
-DMYSQL_UNIX_ADDR=/tmp/mysql.sock \
-DDEFAULT_CHARSET=utf8 \
-DDEFAULT_COLLATION=utf8_general_ci \
-DWITH_EMBEDDED_SERVER=1 \
-DWITHOUT_EXAMPLE_STORAGE_ENGINE=1 \
-DWITHOUT_PARTITION_STORAGE_ENGINE=0 \
-DENABLE_DOWNLOADS=1 
make VERBOSE=1 
make install

#remote the following line for 64bit machine
#-DWITHOUT_PARTITION_STORAGE_ENGINE=1 \


#if [ $installinnodb = "y" ]; then
#./configure --prefix=/usr/local/mysql -`ith-extra-charsets=complex --enable-thread-safe-client --enable-assembler --with-mysqld-ldflags=-all-static --with-charset=utf8 --enable-thread-safe-client --with-big-tables --with-readline --with-ssl --with-embedded-server --enable-local-infile --with-plugins=innobase
#else
#./configure --prefix=/usr/local/mysql --with-extra-charsets=complex --enable-thread-safe-client --enable-assembler --with-mysqld-ldflags=-all-static --with-charset=utf8 --enable-thread-safe-client --with-big-tables --with-readline --with-ssl --with-embedded-server --enable-local-infile
#fi
#make && make install
#cd ../
#cp /usr/local/mysql/share/mysql/my-medium.cnf /etc/my.cnf
#sed -i 's/skip-locking/skip-external-locking/g' /etc/my.cnf
#if [ $installinnodb = "y" ]; then
#sed -i 's:#innodb:innodb:g' /etc/my.cnf
#fi
mysqldir=/usr/local/mysql/
datadir=/usr/local/mysql/data
if [ -e "$datadir" ];then
datadir=/usr/local/mysql/var
fi
cd /usr/local/mysql
/usr/local/mysql/scripts/mysql_install_db --user=mysql --datadir=$datadir
chown -R mysql:mysql $mysqldir
mv /etc/my.cnf /etc/my.cnf.bk
scripts/mysql_install_db --basedir=/usr/local/mysql --datadir=/usr/local/mysql/data --user=mysql



cp /usr/local/mysql/support-files/mysql.server /etc/init.d/mysql
## if memory less than 512M,then it will ocurr erros with message InnoDB: Initializing buffer pool, size = 128.0M failded
[[ `free -m|grep Mem|awk '{print $2}'` -lt 512 ]] && echo perfschema_schema=off>>my.cnf

[ ! -e /etc/mysql.cnf ] && ln -s -f /usr/local/mysql/my.cnf /etc/my.cnf
# if [ -e "/usr/local/mysql/support-files/my-medium.cnf" ];then
# cp /usr/local/mysql/support-files/my-medium.cnf /etc/my.cnf
# else
# sed -i -e 's#socket=.*#socket=/tmp/mysql.sock#'  -e 's#datadir=.*#datadir=/usr/local/mysql/data#' /etc/my.cnf
# fi
ln -s /usr/local/mysql/bin/mysqld_safe /usr/bin/mysqld_safe
ln -s /usr/local/mysql/bin/mysql /usr/bin/mysql
ln -s /usr/local/mysql/bin/mysqldump /usr/bin/mysqldump
ln -s /usr/local/mysql/bin/mysqladmin /usr/bin/mysqladmin
service mysql start
read -p "new mysql password" pwd
mysqladmin -uroot -p"" password $pwd













