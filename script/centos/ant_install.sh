#/bin/bash
. config.sh
. pkgs.sh
. common.sh

 
echo $ant
zipDir=`dezip_pkg $ant`

if [ -e $zipDir ];then
sudo mv $zipDir /usr/local/$zipDir
[ $? == 0 ] && echo "export ANT_HOME=/usr/local/$zipDir">>$HOME/.bashrc
read -p "Do you want to install exrat ant packages()" yesno
[[ yesno == 'y' ||  yesno == 'Y' || yesno == 'Yes' || yesno == 'yes' ]] && cd /usr/local/$zipDir && ant -f fetch.xml -Ddest=system
else
echo install error
fi