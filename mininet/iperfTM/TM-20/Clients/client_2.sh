#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 2001 -u -b 22605.45k -t 30 --tos 14 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 2003 -u -b 11683.36k -t 30 --tos 15 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 2004 -u -b 6230.47k -t 30 --tos 16 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 2005 -u -b 7722.17k -t 30 --tos 17 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 2006 -u -b 4972.59k -t 30 --tos 18 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 2007 -u -b 6336.85k -t 30 --tos 19 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 2008 -u -b 0.00k -t 30 --tos 20 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 2009 -u -b 19760.67k -t 30 --tos 21 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 2010 -u -b 3591.55k -t 30 --tos 22 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 2011 -u -b 0.00k -t 30 --tos 23 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 2012 -u -b 17352.27k -t 30 --tos 24 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 2013 -u -b 16876.56k -t 30 --tos 25 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 2014 -u -b 8151.79k -t 30 --tos 26 >/dev/null 2>&1 &
sleep 0.4