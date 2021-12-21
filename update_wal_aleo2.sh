
#rm $HOME/aleod-miner.service
echo "[Unit]
Description=Aleo Miner Testnet2
After=network-online.target
[Service]
User=$USER
ExecStart=/usr/bin/snarkos --trial --miner $1
Restart=always
RestartSec=10
LimitNOFILE=10000
[Install]
WantedBy=multi-user.target
" > $HOME/aleod-miner.service
service aleod-miner restart
