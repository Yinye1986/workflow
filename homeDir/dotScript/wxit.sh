#!/bin/bash

ip_address=$(ip -4 addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -1)

if [ -z "$ip_address" ]; then
    echo "未能从 wlan0 接口获取到有效的 IP 地址。"
    exit 1
fi

curl -X POST -H "Content-Type: application/json" -d "{\"username\":\"1322332125\",\"password\":\"wang666.\",\"ifautologin\":\"1\",\"channel\":\"_GET\",\"pagesign\":\"firstauth\",\"usripadd\":\"$ip_address\"}" http://net.wxit.edu.cn/api/v1/login
curl -X POST -H "Content-Type: application/json" -d "{\"username\":\"1322332125\",\"password\":\"wang666.\",\"ifautologin\":\"1\",\"channel\":\"3\",\"pagesign\":\"secondauth\",\"usripadd\":\"$ip_address\"}" http://net.wxit.edu.cn/api/v1/login    
