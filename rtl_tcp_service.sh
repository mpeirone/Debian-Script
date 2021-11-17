#/bin/bash

echo $$ > .rtl_tcp_script_pid
while [[ $(< .rtl_tcp_script_pid) == $$ ]]
do
        procNum=$(ps -ef | grep 'rtl_tcp' | wc -l)
        pkill -9 -f rtl_tcp
        echo "Killed $procNum processes, starting rtl_tcp"
        rtl_tcp -a 0.0.0.0
        sleep 1
done
