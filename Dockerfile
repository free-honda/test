FROM golang:1.23.5-alpine3.21

# 作業ディレクトリの設定
WORKDIR /usr/src/app

# 必要なパッケージをインストール
RUN apk add --no-cache git gcc libc-dev

# Air をインストール
RUN go install github.com/air-verse/air@latest

# 必要なポートを公開
EXPOSE 1323

# アプリケーションを実行
CMD ["air"]
