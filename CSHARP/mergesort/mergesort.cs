public static void MergeSort(int[] array)
{
    if (array.Length > 1)
    {
        int mid = array.Length / 2;

        int[] leftArray = new int[mid];
        int[] rightArray = new int[array.Length - mid];

        for (int i = 0; i < mid; i++)
        {
            leftArray[i] = array[i];
        }

        for (int i = mid; i < array.Length; i++)
        {
            rightArray[i - mid] = array[i];
        }

        MergeSort(leftArray);
        MergeSort(rightArray);
        Merge(array, leftArray, rightArray);
    }
}

private static void Merge(int[] array, int[] leftArray, int[] rightArray)
{
    int i = 0;
    int j = 0;
    int k = 0;

    while (i < leftArray.Length && j < rightArray.Length)
    {
        if (leftArray[i] < rightArray[j])
        {
            array[k] = leftArray[i];
            i++;
        }
        else
        {
            array[k] = rightArray[j];
            j++;
        }

        k++;
    }

    while (i < leftArray.Length)
    {
        array[k] = leftArray[i];
        i++;
        k++;
    }

    while (j < rightArray.Length)
    {
        array[k] = rightArray[j];
        j++;
        k++;
    }
}
