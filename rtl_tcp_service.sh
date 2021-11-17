#/bin/bash

path="/home/mpcom/scripts"



echo $$ > "${path}/.rtl_tcp_script_pid"
while [[ $(< "${path}/.rtl_tcp_script_pid") == $$ ]]
do
        procNum=$(ps -ef | grep 'rtl_tcp' | egrep -v "bash|grep" |  cut -b11-15)
        if [ $(echo $procNum | wc -w) -gt 0 ]
        then
                echo "Killed $(echo $procNum | wc -w) processes, starting rtl_tcp"
                kill -9 $procNum
        fi
        rtl_tcp -a 0.0.0.0
        sleep 1
done
