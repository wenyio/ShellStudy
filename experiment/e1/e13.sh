#!/bin/bash

echo "创建备份目录"
mkdir -p ./backup

echo "开始备份。。"
tar czf ./backup/etc_$(date +%F_%M).tar.gz /etc/



