#/bin/bash
. pkgs.sh
. config.sh
. common.sh
inst_jdk8


echo "add mysql user add import sql data"

[ ! -d $TAS_HOME ] && unzip tashome.zip
[ "`pwd`tashome" != '$TAS_HOME' ] && mv tashome $TAS_HOME
cd $TAS_HOME

mysql -uroot -p"$mysqlrootpwd" -e "create DATABASE ssky DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;"

mysql -uroot -p"$mysqlrootpwd" -e "GRANT ALL PRIVILEGES ON $TAS_DB_SCHEMA.* TO '$TAS_DB_USER'@'localhost' identified by '$TAS_DB_PASSWORD' WITH GRANT OPTION;"

mysql -uroot -p"$mysqlrootpwd" -D$TAS_DB_SCHEMA < init-tables.sql



#注意变量替换时后变量的值可能和保留符号冲突,所以变量中的冲突符号最好加上反斜杠
sed  -i"_bk" -e "/TAS_DB_USER=/s/.*/export TAS_DB_USER=$TAS_DB_USER/" \
-e "/TAS_DB_SCHEMA=/s/.*/export TAS_DB_SCHEMA=$TAS_DB_SCHEMA/" \
-e "/TAS_DB_PASSWORD=/s/.*/export TAS_DB_PASSWORD=$TAS_DB_PASSWORD/" \
-e "/TAS_HOST_IP=/s/.*/export TAS_HOST_IP=$TAS_HOST_IP/" \
-e "/TAS_DB_URL=/s/.*/export TAS_DB_URL=$TAS_DB_URL/" tasrtenv.sh

echo "start build and run tas"

mysql -uroot -p"$mysqlrootpwd" -e "INSERT INTO $TAS_DB_SCHEMA.cci_svccfg (svcName,smtpHost,smtpPort,smtpName,smtpPwd,appUrl) VALUES ('$cci_svcName','$cci_smtpHost','$cci_smtpPort','$cci_smtpName','$cci_smtpPwd','$cci_appUrl');"


echo -e "start build and run tas"
chmod +x tasrtenv.sh
chmod -R 777 $TAS_HOME
. tasrtenv.sh
cat - <<EOF
./tasrtenv.sh
a.启动命令，执行 tasstart -l
b.停止服务，执行 tasstop
c.查看日志，执行taildbgmib
EOF

