# On the Energy Efficiency of Sorting Algorithms

We recommend to visit our [website](https://miguelamm42-sortingalgorithmsbenchmark-home-ans0i8.streamlit.app/) in order to analyze our data and get the developed paper.

## LIST OF ALL LANGUAGES TO STUDY

List contains part of the 27 languages from the *23.02 Benchmarks Game* Study (https://benchmarksgame-team.pages.debian.net/benchmarksgame/index.html):

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

Generated array with Python script:

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
