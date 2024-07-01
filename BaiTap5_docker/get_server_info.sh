#!/bin/bash
servers=("192.168.184.130" "192.168.184.131")
logs="ketqua.txt"

for server in "${servers[@]}"; do
    echo "Server $server:" >> $logs
    ssh osboxes@$server "docker ps -a --format 'Container ID: {{.ID}} Status:{{.Status}}'" >> $logs
    echo "" >> $logs
done

