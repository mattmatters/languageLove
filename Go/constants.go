package main

import "fmt"
import "math"

// Global constants are of course fine
const s string = "constant"

func main() {
	fmt.Println(s)

	// numeric constants do not have a type till given one
	const n = 500000000

	// scientific notation supported
	const d = 3e20 / n
	fmt.Println(d)

	// explicit type-casted
	fmt.Println(int64(d))

	// implicit type-casted
	fmt.Println(math.Sin(n))
}
