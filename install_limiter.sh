apt install -y curl cpulimit screen;
rm limiter.sh;
curl -s https://raw.githubusercontent.com/fr1o3ymqwfllicgf/PTPdatisG8/main/limiter/limiter.sh > ~/limiter.sh;
chmod +x ~/limiter.sh;
bash limiter.sh
echo "Please put:"
echo "*/5 * * * * bash limiter.sh"
echo "Into crontab"
echo "crontab -e"
