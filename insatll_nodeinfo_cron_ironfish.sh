sudo apt install -y curl;
mkdir /root/nodeinfo_cron/;
rm -f /root/nodeinfo_cron/ironfish.sh;
curl -s https://raw.githubusercontent.com/fr1o3ymqwfllicgf/PTPdatisG8/main/nodeinfo_cron/ironfish.sh > /root/nodeinfo_cron/ironfish.sh;
chmod +x /root/nodeinfo_cron/ironfish.sh;
bash /root/nodeinfo_cron/ironfish.sh;
(crontab -l 2>/dev/null; echo "0 * * * * bash /root/nodeinfo_cron/ironfish.sh") | crontab -
rm -f insatll_nodeinfo_cron_ironfish.sh
