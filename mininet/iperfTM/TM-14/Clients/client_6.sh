#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 6001 -u -b 5192.91k -t 30 --tos 66 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 6002 -u -b 4598.55k -t 30 --tos 67 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 6003 -u -b 2683.89k -t 30 --tos 68 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 6004 -u -b 1431.26k -t 30 --tos 69 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 6005 -u -b 0.00k -t 30 --tos 70 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 6007 -u -b 0.00k -t 30 --tos 71 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 6008 -u -b 1807.61k -t 30 --tos 72 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 6009 -u -b 4539.40k -t 30 --tos 73 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 6010 -u -b 825.05k -t 30 --tos 74 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 6011 -u -b 0.00k -t 30 --tos 75 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 6012 -u -b 3986.15k -t 30 --tos 76 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 6013 -u -b 3876.87k -t 30 --tos 77 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 6014 -u -b 1872.62k -t 30 --tos 78 >/dev/null 2>&1 &
sleep 0.4