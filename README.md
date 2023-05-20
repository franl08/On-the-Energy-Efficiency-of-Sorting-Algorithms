# TP1-EES

## LIST OF ALL LANGUAGES TO STUDY

List contains the part of the 27 languages from the *23.02 Benchmarks Game* Study (https://benchmarksgame-team.pages.debian.net/benchmarksgame/index.html)

- C
- C++ 
- C#
- Go
- Haskell 
- Python
- Rust
- Swift

-----------

## LIST OF ALGORITHMS

- BubbleSort;
- CycleSort;
- HeapSort;
- InsertionSort;
- MergeSort;
- OddEvenSort;
- QuickSort;
- SelectionSort.

----------

## Input Sizes

- 25 000
- 50 000
- 100 000

- Generated array with Python script:
- 
`python helpers/generate_array.py $N_ELEMS 0 100000`

------------

## Results commands

### Only algorithms

```  $ bash algorithms.sh ```

### Only compiling

``` $ bash compile.sh ```

### Both

``` $ bash all.sh ```

CSV files with the results will be generated in the directory `results`.

---------------


## Energy VS Power (for powercap)


- Power (w) - rate(or effort) at which work is done  
- Energy (J) - ammount of work done
- Power can change constantly while Energy is the accumulations

- `Energy = Power X Seconds ` 

- `360 000 = 100 x 3,600`

- **NEED TO CHECK VALUE FOR POWERCAP**