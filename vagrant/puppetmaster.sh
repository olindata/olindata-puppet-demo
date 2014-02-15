cd /tmp 
# download the aptitude release package
if [ ! -f ./puppetlabs-release-squeeze.deb ];
then
    wget -q http://apt.puppetlabs.com/puppetlabs-release-squeeze.deb
    dpkg -i puppetlabs-release-squeeze.deb
    apt-get update
fi
# install master and agent
aptitude install puppetmaster puppet -y
# start the service
service puppetmaster start

echo 'autosign=true' >> /etc/puppet/puppet.conf
echo 'server=master.olindata.vm' >> /etc/puppet/puppet.conf

service puppetmaster restart