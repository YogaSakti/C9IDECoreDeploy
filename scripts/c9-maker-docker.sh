#!/bin/bash
read -p "Input User : " user
read -p "Password : " pw
read -p "Port : " port
cd /home/c9users
rm .env
sudo cat > /home/c9users/.env << EOF
PORT=$port
NAMA_PELANGGAN=$user
PASSWORD_PELANGGAN=$pw
EOF
sudo docker-compose -p $user up -d
if [ -d "/home/c9users/$user" ]; then
cd /home/c9users/$user
mkdir bonus-instagram
cd bonus-instagram
mkdir hypervote-v3.1-official
cd hypervote-v3.1-official
wget https://raw.githubusercontent.com/gvoze32/C9IDECoreDeploy/master/resources/i9wX.zip
unzip i9wX.zip
cd ..
wget https://raw.githubusercontent.com/gvoze32/C9IDECoreDeploy/master/resources/i-5g.zip
unzip i-5g.zip
cd auto_view_story
npm install
cd ..
git clone https://github.com/officialputuid/toolsig
cd toolsig
unzip lib.zip
cd ..
git clone https://github.com/ikiganteng/toolsigeh
git clone https://github.com/auliaahmad165/igfeedliker
git clone https://github.com/areltiyan/igfirstcomment
cd igfirstcomment
npm install
cd ..
git clone https://github.com/sandrocods/instagram-views
git clone https://github.com/nthanfp/storyloop
git clone https://github.com/corrykalam/InstagramAPI
git clone https://github.com/addrmwn/fft
cd fft
unzip node_modules.zip
cd ..
mkdir hypervote-v3.2.1-nulled
cd hypervote-v3.2.1-nulled
wget https://raw.githubusercontent.com/gvoze32/C9IDECoreDeploy/master/resources/it8C.zip
unzip -P sgbteam it8C.zip
cd ..
mkdir hypervote-v3.2.5-nulled
cd hypervote-v3.2.5-nulled
wget https://raw.githubusercontent.com/gvoze32/C9IDECoreDeploy/master/resources/iwuh.zip
unzip -P sgbteambos iwuh.zip
cd
else
echo "Workspace directory not found"
fi
