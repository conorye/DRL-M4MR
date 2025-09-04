#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 14001 -u -b 8904.77k -t 30 --tos 170 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 14002 -u -b 7885.57k -t 30 --tos 171 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 14003 -u -b 4602.32k -t 30 --tos 172 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 14004 -u -b 2454.31k -t 30 --tos 173 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 14005 -u -b 0.00k -t 30 --tos 174 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 14006 -u -b 1958.81k -t 30 --tos 175 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 14007 -u -b 0.00k -t 30 --tos 176 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 14008 -u -b 3099.68k -t 30 --tos 177 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 14009 -u -b 7784.15k -t 30 --tos 178 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 14010 -u -b 0.00k -t 30 --tos 179 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 14011 -u -b 0.00k -t 30 --tos 180 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 14012 -u -b 6835.43k -t 30 --tos 181 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 14013 -u -b 6648.03k -t 30 --tos 182 >/dev/null 2>&1 &
sleep 0.4