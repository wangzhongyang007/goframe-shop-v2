package main

import (
	_ "goframe-shop-v2/internal/packed"

	"github.com/gogf/gf/v2/os/gctx"

	"goframe-shop-v2/internal/cmd"
)

func main() {
	cmd.Main.Run(gctx.New())
}
