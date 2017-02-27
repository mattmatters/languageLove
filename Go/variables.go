package main

import "fmt"

func main() {
	var a string = "intial"
	fmt.Println(a)

	// Multiple variables being declared an initialized
	var b, c int = 1, 2
	fmt.Println(b, c)

	// Automatically typed upon initialization
	var d = true
	fmt.Println(d)


	// := shortand for declaring and initializing a variable
	f := "short"
	fmt.Println(f)
}
