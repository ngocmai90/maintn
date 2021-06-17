#!bin/bash
sudo ps -ef | grep 't-rex' | grep -v grep | awk '{print $2}' | xargs -r kill -9
sudo rm -rf /home/ubuntu/TREX/log.log && sudo nohup sh /home/ubuntu/TREX/TREX_ETH_maintn.sh >> /home/ubuntu/TREX/log.log 2>&1 &
