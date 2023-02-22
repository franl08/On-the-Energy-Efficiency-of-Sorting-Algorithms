public static void Timsort(int[] array)
{
    int minRun = GetMinRun(array.Length);

    for (int i = 0; i < array.Length; i += minRun)
    {
        int end = Math.Min(i + minRun - 1, array.Length - 1);
        InsertionSort(array, i, end);
    }

    for (int size = minRun; size < array.Length; size *= 2)
    {
        for (int left = 0; left < array.Length; left += 2 * size)
        {
            int mid = left + size - 1;
            int right = Math.Min(left + 2 * size - 1, array.Length - 1);

            if (mid < right)
            {
                Merge(array, left, mid, right);
            }
        }
    }
}

private static int GetMinRun(int n)
{
    int r = 0;
    while (n >= 64)
    {
        r |= n & 1;
        n >>= 1;
    }

    return n + r;
}

private static void InsertionSort(int[] array, int left, int right)
{
    for (int i = left + 1; i <= right; i++)
    {
        int key = array[i];
        int j = i - 1;

        while (j >= left && array[j] > key)
        {
            array[j + 1] = array[j];
            j--;
        }

        array[j + 1] = key;
    }
}

private static void Merge(int[] array, int left, int mid, int right)
{
    int len1 = mid - left + 1;
    int len2 = right - mid;

    int[] leftArray = new int[len1];
    int[] rightArray = new int[len2];

    for (int i = 0; i < len1; i++)
    {
        leftArray[i] = array[left + i];
    }

    for (int i = 0; i < len2; i++)
    {
        rightArray[i] = array[mid + i + 1];
    }

    int j = 0;
    int k = 0;
    int i = left;

    while (j < len1 && k < len2)
    {
        if (leftArray[j] <= rightArray[k])
        {
            array[i] = leftArray[j];
            j++;
        }
        else
        {
            array[i] = rightArray[k];
            k++;
        }

        i++;
    }

    while (j < len1)
    {
        array[i] = leftArray[j];
        j++;
        i++;
    }

    while (k < len2)
    {
        array[i] = rightArray[k];
        k++;
        i++;
    }
}
