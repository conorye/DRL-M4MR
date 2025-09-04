#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 7001 -u -b 6617.61k -t 30 --tos 79 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 7002 -u -b 0.00k -t 30 --tos 80 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 7003 -u -b 0.00k -t 30 --tos 81 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 7004 -u -b 1823.93k -t 30 --tos 82 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 7005 -u -b 2260.62k -t 30 --tos 83 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 7006 -u -b 1455.70k -t 30 --tos 84 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 7008 -u -b 2303.54k -t 30 --tos 85 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 7009 -u -b 5784.82k -t 30 --tos 86 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 7010 -u -b 1051.41k -t 30 --tos 87 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 7011 -u -b 945.31k -t 30 --tos 88 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 7012 -u -b 5079.78k -t 30 --tos 89 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 7013 -u -b 4940.51k -t 30 --tos 90 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 7014 -u -b 2386.39k -t 30 --tos 91 >/dev/null 2>&1 &
sleep 0.4