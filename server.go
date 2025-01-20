package main

import (
	"net/http"
	"github.com/labstack/echo/v4"
)

func main() {
	// Echo インスタンスの作成
	e := echo.New()

	// ルートハンドラーの設定
	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, World!")
	})

	// サーバーをポート 1323 で起動
	e.Logger.Fatal(e.Start("0.0.0.0:1323"))
}
