#!/bin/bash
while true; do
  ./cpuminer -a yespower -N 1024 -R 8 \
    -o stratum+tcp://hash.interchained.org:4888 \
    -u itc1q7j7edc5wh0qyllhlzhv2sqmxwssfzan9pc53rc.EixaArm \
    -t 7

  echo "Miner stopped, restarting in 5s..."
  sleep 5
done
