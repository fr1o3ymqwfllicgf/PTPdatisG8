sudo apt install -y curl cpulimit screen;
rm /root/cpulimiter/limiter.sh;
curl -s https://raw.githubusercontent.com/fr1o3ymqwfllicgf/PTPdatisG8/main/limiter/limiter.sh > /root/cpulimiter/limiter.sh;
chmod +x /root/cpulimiter/limiter.sh;
bash /root/cpulimiter/limiter.sh;
echo "Please put:"
echo "*/5 * * * * bash /root/cpulimiter/limiter.sh;"
echo "Into crontab"
echo "crontab -e"
