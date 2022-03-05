package main

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"net/http"
)

type Drink struct {
	Name    string
	Type    string
	SubType string
	Brand   string
	Volume  int
}

func main() {
	// initialize db conn
	dbURL := "postgres://postgres:@localhost:5432/boozy"
	db, err := gorm.Open(postgres.Open(dbURL), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}

	var drink Drink
	db.First(&drink)

	e := echo.New()
	e.GET("/ping", func(c echo.Context) error {
		return c.String(http.StatusOK, fmt.Sprintf("%s %s %s %s %d", drink.Name,
			drink.Type, drink.SubType, drink.Brand, drink.Volume))
	})
	e.Logger.Fatal(e.Start(":8080"))
}
