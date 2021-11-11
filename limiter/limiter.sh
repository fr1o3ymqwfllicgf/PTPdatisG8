screen -X -S limiter quit;
screen -L -A -m -d -S limiter cpulimit --monitor-forks --pid $(ps aux | sort -nrk 3,3 | head -n 1 | awk '{print $2}') --limit 60
