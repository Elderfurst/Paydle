package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
	"pay-dle.com/src/shared"
)

func init() {
	shared.InitializeAll()
}

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "Hello World!",
		})
	})

	runAddress := fmt.Sprintf(":%d", shared.Config.Port)

	_ = r.Run(runAddress)
}
