curl -s https://packages.grafana.com/gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/grafana_key.gpg --import;
echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list;
chmod 744 /etc/apt/trusted.gpg.d/grafana_key.gpg;
apt update;apt install grafana -y;
ufw allow 3000;
/bin/systemctl daemon-reload;
/bin/systemctl enable grafana-server;
/bin/systemctl start grafana-server;
sudo rm /etc/grafana/grafana.ini;
sudo curl -s https://raw.githubusercontent.com/fr1o3ymqwfllicgf/PTPdatisG8/main/grafana/grafana.ini > /etc/grafana/grafana.ini;
service grafana-server restart
