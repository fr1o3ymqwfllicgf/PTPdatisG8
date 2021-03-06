
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install curl unzip ufw -y
sudo rm -rf /usr/local/go
curl https://dl.google.com/go/go1.15.7.linux-amd64.tar.gz | sudo tar -C/usr/local -zxvf -
cat <<'EOF' >>$HOME/.profile
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO111MODULE=on 
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
EOF
source $HOME/.profile
go version
mkdir space && cd $HOME/space
wget https://storage.googleapis.com/go-spacemesh-release-builds/v0.1.44/ubuntu-latest/go-spacemesh
mv go-spacemesh node
chmod +x ./node
wget https://storage.googleapis.com/spacecraft-data/tweedlelite134-archive/config.json
sudo tee <<EOF >/dev/null /etc/systemd/system/spaced.service
[Unit]
Description=Spacemesh Node
After=network-online.target
[Service]
User=root
ExecStart=/root/space/node --tcp-port 7513 --config /root/space/config.json -d /root/space/sm_data --coinbase 0x545A88Ef0b6159A4eC2A4DB99De4C28314F2c431 --start-mining --post-datadir /root/space/post_data
Restart=always
RestartSec=10
LimitNOFILE=10000
[Install]
WantedBy=multi-user.target
EOF

# sudo ufw disable
sudo systemctl daemon-reload
sudo systemctl start spaced
sudo journalctl -u spaced -f

