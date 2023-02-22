public static void QuickSort(int[] array, int left, int right)
{
    if (left < right)
    {
        int pivot = Partition(array, left, right);
        QuickSort(array, left, pivot - 1);
        QuickSort(array, pivot + 1, right);
    }
}

private static int Partition(int[] array, int left, int right)
{
    int pivot = array[right];
    int i = left - 1;

    for (int j = left; j < right; j++)
    {
        if (array[j] < pivot)
        {
            i++;
            int temp = array[i];
            array[i] = array[j];
            array[j] = temp;
        }
    }

    int temp2 = array[i + 1];
    array[i + 1] = array[right];
    array[right] = temp2;

    return i + 1;
}
