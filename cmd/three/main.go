package main

import (
	"fmt"

	"github.com/nikkomiu/simple-multi-bin/pkg/foo"
)

func main() {
	msg := foo.Bar()

	fmt.Printf("Hello from three!\n\n%s\n", msg)
}
