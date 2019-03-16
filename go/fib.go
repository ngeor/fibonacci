package main

import "fmt"

func fib(n int) int {
	if n <= 1 {
		return n
	}

	return fib(n - 1) + fib(n - 2)
}

func main() {
	fmt.Print("Enter the fibonacci number to calculate: ")
	var number int
	_, err := fmt.Scanf("%d", &number)
	if err != nil {
		panic(err)
	}

	for i := 0; i <= number; i++ {
		fmt.Printf("The fibonacci of %d is %d\n", i, fib(i))
	}
}
