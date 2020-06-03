### heartbeat
  服務監控，透過elasticsearch、kibana、heartbeat實現
  
### Run

1. Clone source code
> git clone https://github.com/AndyWeiBoan/heartbeat.git

2. Amend .env file
> 如果環境是使用wsl 需要修改volumes的路徑
> 如果是其他環境，請新增一個env檔案，並照著env.wsl格式修改

3. docker-compose up
> 請到src層 輸入
> docker-compose -f build/docker-compose.yml --env-file build/.env.wsl up -d
