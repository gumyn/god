package main

import (
	"log"
	
	"github.com/fatih/color"
)

func main() {
	
	log.Printf("First app running %v only on %v", "Yes", "Docker")
	color.Green("Hello, World!")

}