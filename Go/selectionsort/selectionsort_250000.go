package main

import "fmt"

func SelectionSort(arr []int) {
	for i := 0; i < len(arr)-1; i++ {
		minIndex := i
		for j := i + 1; j < len(arr); j++ {
			if arr[j] < arr[minIndex] {
				minIndex = j
			}
		}
		arr[i], arr[minIndex] = arr[minIndex], arr[i]
	}
}

func main() {
	debug := false
	SelectionSort(arr)
	if debug {
		fmt.Println("Sorted array:", arr)
	}

}