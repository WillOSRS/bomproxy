apt-get update && apt-get -y upgrade
apt-get install -y build-essential nano
wget --no-check-certificate https://github.com/z3APA3A/3proxy-archive/raw/master/0.9.0-rc/3proxy-0.9.0-rc.tgz
tar xzf 0.9.0.tgz
cd 3proxy
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/bomzene/bomproxy/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/bomzene/bomproxy/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate https://raw.githubusercontent.com/bomzene/bomproxy/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
