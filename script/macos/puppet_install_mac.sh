#!/usr/bin/env bash
 
set -o errtrace
set -o errexit


. pkgs.sh
. common.sh 
facter_version=2.2.0
hiera_version=1.3.4
puppet_version=3.7.1

PKGDIR=$HOME/Downloads
target_volume="Macintosh HD"
 
echo "About to install Facter $facter_version and Puppet $puppet_version on target volume $target_volume"
 
start_date=$(date "+%Y-%m-%d%:%H:%M:%S")
 
echo "mkdir  /private/tmp/$start_date ; cd /private/tmp/$start_date"
mkdir  /private/tmp/$start_date ; cd /private/tmp/$start_date

facter_file=`download_pkg $facter`
hiera_file=`download_pkg $hiera`
puppet_file=`download_pkg $puppet`

echo "hdiutil attach facter-$facter_version.dmg"
hdiutil attach $facter_file
echo "hdiutil attach puppet-$puppet_version.dmg"
hdiutil attach $puppet_file
echo "hiera attach hiera-$facter_version.dmg"
hdiutil attach $hiera_file

facter_base=${facter_file%.dmg}
puppet_base=${puppet_file%.dmg}
hiera_base=${hiera_file%.dmg}

 echo "sudo installer -package /Volumes/$facter_base/$facter_base.pkg -target $target_volume"
sudo installer -package /Volumes/$facter_base/$facter_base.pkg -target "$target_volume"

echo "sudo installer -package /Volumes/$hiera_base/$hiera_base.pkg -target $target_volume"
sudo installer -package /Volumes/$hiera_base/$hiera_base.pkg -target "$target_volume"
 
echo "sudo installer -package /Volumes/$puppet_base/$puppet_base.pkg -target $target_volume"

sudo installer -package /Volumes/$puppet_base/$puppet_base.pkg -target "$target_volume"

echo "Creating directories in /var and /etc - needs sudo"
sudo mkdir -p /var/lib/puppet
sudo mkdir -p /etc/puppet/manifests
sudo mkdir -p /etc/puppet/ssl
 
 
 
if [ $(dscl . -list /Groups | grep puppet | wc -l)  = 0 ]; then
  echo "Creating a puppet group - needs sudo"
  max_gid=$(dscl . -list /Groups gid | awk '{print $2}' | sort -ug | tail -1) 
  new_gid=$((max_gid+1))
  sudo dscl . create /Groups/puppet
  sudo dscl . create /Groups/puppet gid $new_gid
fi
 
 
if [ $(dscl . -list /Users | grep puppet | wc -l)  = 0 ]; then
  echo "Creating a puppet user - needs sudo"
  max_uid=$(dscl . -list /Users UniqueID | awk '{print $2}' | sort -ug | tail -1)
  new_uid=$((max_uid+1))
  sudo dscl . create /Users/puppet
  sudo dscl . create /Users/puppet UniqueID $new_uid
  sudo dscl . -create /Users/puppet PrimaryGroupID $new_gid
fi
 
echo "Creating /etc/puppet/puppet.conf - needs sudo"
 
sudo sh -c "echo \"[main]
pluginsync = false
server = `hostname`
 
[master]
vardir = /var/lib/puppet
libdir = $vardir/lib
ssldir = /etc/puppet/ssl
certname = `hostname`
 
[agent]
vardir = /var/lib/puppet
libdir = $vardir/lib
ssldir = /etc/puppet/ssl
certname = `hostname`
\" > /etc/puppet/puppet.conf"
 
echo "Changing permissions - needs sudo"
 
sudo chown -R puppet:puppet  /var/lib/puppet
sudo chown -R puppet:puppet  /etc/puppet
 
echo "Cleaning up"
 
hdiutil detach /Volumes/$facter_base
hdiutil detach /Volumes/$hiera_base
hdiutil detach /Volumes/$puppet_base
 
cd /private/tmp
rm -rf ./$start_date
mkdir -p /var/log/puppet

cat -> /Library/LaunchDaemons/com.puppetlabs.puppet.plist<<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>Label</key>
        <string>com.puppetlabs.puppet</string>
        <key>OnDemand</key>
        <false/>
        <key>ProgramArguments</key>
        <array>


                <string>/usr/bin/puppet</string>
                <string>agent</string>
                <string>--no-daemonize</string>
                <string>--logdest</string>
                <string>syslog</string>
                <string>--color</string>
                <string>false</string>
                <string>--debug</string>
        </array>
        <key>StandardErrorPath</key>
        <string>/var/log/puppet/puppet.err</string>
      <key>StandardOutPath</key>
      <string>/var/log/puppet/puppet.out</string>
        <key>RunAtLoad</key>
        <true/>

        <key>ServiceDescription</key>
        <string>Puppet agent service</string>
        <key>ServiceIPC</key>
        <false/>
</dict>
</plist>
EOF
sudo chown root:wheel /Library/LaunchDaemons/com.puppetlabs.puppet.plist
sudo chmod 644 /Library/LaunchDaemons/com.puppetlabs.puppet.plist