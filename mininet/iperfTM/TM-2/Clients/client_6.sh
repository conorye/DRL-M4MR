#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 6001 -u -b 5769.89k -t 30 --tos 66 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 6002 -u -b 5109.50k -t 30 --tos 67 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 6003 -u -b 2982.10k -t 30 --tos 68 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 6004 -u -b 1590.29k -t 30 --tos 69 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 6005 -u -b 1971.03k -t 30 --tos 70 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 6007 -u -b 1617.44k -t 30 --tos 71 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 6008 -u -b 0.00k -t 30 --tos 72 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 6009 -u -b 0.00k -t 30 --tos 73 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 6010 -u -b 0.00k -t 30 --tos 74 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 6011 -u -b 0.00k -t 30 --tos 75 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 6012 -u -b 0.00k -t 30 --tos 76 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 6013 -u -b 4307.63k -t 30 --tos 77 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 6014 -u -b 2080.69k -t 30 --tos 78 >/dev/null 2>&1 &
sleep 0.4