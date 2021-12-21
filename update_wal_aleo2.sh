echo "Old Aleo Address - $(cat /etc/systemd/system/aleod-miner.service | awk '/ --trial --miner / {print $4}' | tail -1)"
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
" > /etc/systemd/system/aleod-miner.service
systemctl daemon-reload
service aleod-miner restart
echo "New Aleo Address (old) - $(cat /etc/systemd/system/aleod-miner.service | awk '/ --trial --miner / {print $4}' | tail -1)
