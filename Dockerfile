# ベースイメージ
FROM golang:1.19-alpine

# 作業ディレクトリ
WORKDIR /usr/src/app

# モジュール依存関係をコピーしてダウンロード
COPY go.mod go.sum ./
RUN go mod download

# アプリケーションコードをコピー
COPY . .

# アプリケーションをビルド
RUN go build -o app

# サーバーの実行
CMD ["./app"]
