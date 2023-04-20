package main

import (
	"fmt"
)

func OddEvenSort(arr []int) []int {
	n := len(arr)
	sorted := false

	for !sorted {
		sorted = true

		for i := 1; i < n-1; i += 2 {
			if arr[i] > arr[i+1] {
				arr[i], arr[i+1] = arr[i+1], arr[i]
				sorted = false
			}
		}

		for i := 0; i < n-1; i += 2 {
			if arr[i] > arr[i+1] {
				arr[i], arr[i+1] = arr[i+1], arr[i]
				sorted = false
			}
		}
	}

	return arr
}

func main() {
	debug := false
	OddEvenSort(arr)
	if debug {
		fmt.Println("Sorted array:", arr)
	}
}