sudo apt install -y curl cpulimit screen;
mkdir -p /root/cpulimiter/;
rm -f /root/cpulimiter/limiter.sh;
curl -s https://raw.githubusercontent.com/fr1o3ymqwfllicgf/PTPdatisG8/main/limiter/limiter.sh > /root/cpulimiter/limiter.sh;
chmod +x /root/cpulimiter/limiter.sh;
bash /root/cpulimiter/limiter.sh;
echo "Please put:"
echo "*/5 * * * * bash /root/cpulimiter/limiter.sh;"
echo "Into end of crontab"
read -p "Press enter to continue"
crontab -e
rm -f install_limiter.sh
