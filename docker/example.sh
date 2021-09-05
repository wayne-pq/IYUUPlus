#!/bin/sh
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/bin
## 相关命令
# 1. 手动执行辅种
docker exec IYUUPlus php ./bin/iyuu.php

# 2. 手动删除辅种缓存
docker exec -it IYUUPlus rm -rf ./runtime/torrent/cachehash

# 3. 手动删除转移缓存
docker exec -it IYUUPlus rm -rf ./runtime/torrent/cachemove

# 4. 查看当前定时任务
docker exec -it IYUUPlus crontab -l

# 5. 修改定时任务（推荐修改docker容器的环境变量：参数cron）
docker exec -it IYUUPlus crontab -e

# 6. 进入容器内交互终端
docker exec -it IYUUPlus sh