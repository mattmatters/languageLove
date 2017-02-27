package main

import "fmt"

// Go's only looping mechanism is for

func main() {
	i := 1

	// While loop
	for i <= 3 {
		fmt.Println("Looping i = ", i)
		i = i + 1
	}

	// For loop
	for j := 7; j <= 9; j++ {
		fmt.Println("looping j = ", j)
	}

	// Without a condition a for loop will repeat forever
	for {
		fmt.Println("loop with immediate break")
		break
	}

	// Continue will say whether to continue to next iteration of the loop, or procede with current iteration
	for n := 0; n <= 5; n++ {
		if n % 2 == 0 {
			continue
		}
		fmt.Println("looping n with continue, n = ", n)
	}
}
