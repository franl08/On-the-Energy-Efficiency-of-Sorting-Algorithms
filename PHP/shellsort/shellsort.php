function shellSort($arr) {
  $n = count($arr);

  // Start with a large gap, then reduce the gap
  for ($gap = (int) ($n / 2); $gap > 0; $gap = (int) ($gap / 2)) {
    // Do a gapped insertion sort for this gap size
    for ($i = $gap; $i < $n; $i++) {
      // Add arr[i] to the elements that have been gap sorted
      // Save arr[i] in temp and make a hole at position i
      $temp = $arr[$i];
      // Shift elements that are greater than temp to the right
      for ($j = $i; $j >= $gap && $arr[$j - $gap] > $temp; $j -= $gap) {
        $arr[$j] = $arr[$j - $gap];
      }
      // Put temp in the correct location
      $arr[$j] = $temp;
    }
  }

  return $arr;
}

timSort