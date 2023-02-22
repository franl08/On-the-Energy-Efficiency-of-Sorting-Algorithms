public static void ShellSort(int[] array)
{
    int gap = array.Length / 2;

    while (gap > 0)
    {
        for (int i = gap; i < array.Length; i++)
        {
            int temp = array[i];
            int j = i;

            while (j >= gap && array[j - gap] > temp)
            {
                array[j] = array[j - gap];
                j -= gap;
            }

            array[j] = temp;
        }

        gap /= 2;
    }
}
