#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 14001 -u -b 8512.97k -t 30 --tos 170 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 14002 -u -b 0.00k -t 30 --tos 171 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 14003 -u -b 4399.83k -t 30 --tos 172 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 14004 -u -b 0.00k -t 30 --tos 173 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 14005 -u -b 2908.09k -t 30 --tos 174 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 14006 -u -b 1872.62k -t 30 --tos 175 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 14007 -u -b 2386.39k -t 30 --tos 176 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 14008 -u -b 2963.30k -t 30 --tos 177 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 14009 -u -b 7441.65k -t 30 --tos 178 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 14010 -u -b 1352.54k -t 30 --tos 179 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 14011 -u -b 1216.06k -t 30 --tos 180 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 14012 -u -b 6534.68k -t 30 --tos 181 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 14013 -u -b 6355.53k -t 30 --tos 182 >/dev/null 2>&1 &
sleep 0.4