yarn --cwd ~/ironfish/ironfish-cli/ start:once  status > node.txt;
journalctl -u ironfishd -n 5 >> node.txt;
sed -i 's/.contaboserver.net//g' node.txt;
curl -s -X POST https://api.telegram.org/bot1184842954:AAFTojSSbIqzfqtoSG4aPUEmqf_ioGrsuJg/sendMessage -d chat_id=-1001762572216 -d text=" $(hostname -I | awk '{print $1}') - Ironfish Node Info: \%0A $(tail -n +6 node.txt)"
