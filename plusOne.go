package main

import (
	"fmt"
	"math/big"
	"strconv"
)

func main() {
	input := []int{1, 2, 9}
	fmt.Println(plusOne(input))
}

func plusOne(digits []int) []int {
	x := ""
	var r []int
	for _, digit := range digits {
		x += strconv.Itoa(digit)
	}
	y, err := strconv.Atoi(x)
	if err != nil {
		fmt.Println(err)
	}
	y += 1
	x = strconv.Itoa(y)
	for _, char := range x {
		num, _ := strconv.Atoi(string(char))
		r = append(r, num)
	}
	return r
}

func plusOneBigInt(digits []int) []int {
	x := big.NewInt(0)
	for _, digit := range digits {
		x = x.Mul(x, big.NewInt(10))
		x = x.Add(x, big.NewInt(int64(digit)))
	}
	x = x.Add(x, big.NewInt(1))

	// Convert big.Int back to slice of integers
	var r []int
	for x.Cmp(big.NewInt(0)) > 0 {
		remainder := new(big.Int)
		x, remainder = x.DivMod(x, big.NewInt(10), remainder)
		r = append([]int{int(remainder.Int64())}, r...)
	}
	return r
}
