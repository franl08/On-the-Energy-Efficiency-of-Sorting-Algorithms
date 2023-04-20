package main

import (
	"fmt"
)

func InsertionSort(arr []int) {
	for i := 1; i < len(arr); i++ {
		key := arr[i]
		j := i - 1
		for j >= 0 && arr[j] > key {
			arr[j+1] = arr[j]
			j--
		}
		arr[j+1] = key
	}
}

func main() {
	debug := false
	InsertionSort(arr)
	if debug {
		fmt.Println("Sorted array:", arr)
	}
}