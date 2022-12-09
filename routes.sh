#!/bin/bash
route delete -net 10/20 172.16.16.1
route add -net 10.0.1.0/20 172.16.16.1
COUNT=0
while [ ${COUNT} -le 6 ]
do
#eval ${DEBUG}
VPN=`netstat -nr | awk /^10\ .*gpd0/'{print $2}'`
if  [ ! -z "${VPN}" ] ; then
VPN100="`netstat -nr | awk /^100\ .*gpd0/'{print $2}'`"
VPN50="`netstat -nr | awk /^50\ .*gpd0/'{print $2}'`"
VPN13="`netstat -nr | awk /^13\ .*gpd0/'{print $2}'`"
VPN52="`netstat -nr | awk /^52\ .*gpd0/'{print $2}'`"
VPN54="`netstat -nr | awk /^54\ .*gpd0/'{print $2}'`"
VPN23="`netstat -nr | awk /^23\ .*gpd0/'{print $2}'`"
VPN35="`netstat -nr | awk /^35\ .*gpd0/'{print $2}'`"
VPN63="`netstat -nr | awk /^63\ .*gpd0/'{print $2}'`"
VPN18="`netstat -nr | awk /^18\ .*gpd0/'{print $2}'`"
VPN34="`netstat -nr | awk /^34\ .*gpd0/'{print $2}'`"
VPN3="`netstat -nr | awk /^3\ .*gpd0/'{print $2}'`"
VPN53="`netstat -nr | awk /^53\ .*gpd0/'{print $2}'`"
VPN174="`netstat -nr | awk /^174\ .*gpd0/'{print $2}'`"
if [ -z "${VPN50}" ] ; then
route add -net 50.0.0.0/8 ${VPN}
fi
if [ -z "${VPN13}" ] ; then
route add -net 13.0.0.0/8 ${VPN}
fi
if [ -z "${VPN100}" ] ; then
route add -net 100.0.0.0/8 ${VPN}
fi
if [ -z "${VPN52}" ] ; then
route add -net 52.0.0.0/8 ${VPN}
fi
if [ -z "${VPN63}" ] ; then
route add -net 63.0.0.0/8 ${VPN}
fi
if [ -z "${VPN54}" ] ; then
route add -net 54.0.0.0/8 ${VPN}
fi
if [ -z "${VPN18}" ] ; then
route add -net 18.0.0.0/8 ${VPN}
fi
if [ -z "${VPN23}" ] ; then
route add -net 23.0.0.0/8 ${VPN}
fi
if [ -z "${VPN34}" ] ; then
route add -net 34.0.0.0/8 ${VPN}
fi
if [ -z "${VPN3}" ] ; then
route add -net 3.0.0.0/8 ${VPN}
fi
if [ -z "${VPN35}" ] ; then
route add -net 35.0.0.0/8 ${VPN}
fi
if [ -z "${VPN53}" ] ; then
route add -net 53.0.0.0/8 ${VPN}
fi
if [ -z "${VPN174}" ] ; then
route add -net 174.0.0.0/8 ${VPN}
fi
fi
COUNT=$((COUNT + 1))
#sleep 10
done
echo done
