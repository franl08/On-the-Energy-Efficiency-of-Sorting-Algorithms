public static void CombSort(int[] array)
{
    int gap = array.Length;
    double shrink = 1.3;
    bool swapped = true;

    while (gap > 1 || swapped)
    {
        gap = (int)(gap / shrink);

        if (gap < 1)
        {
            gap = 1;
        }

        int i = 0;
        swapped = false;

        while (i + gap < array.Length)
        {
            if (array[i] > array[i + gap])
            {
                int temp = array[i];
                array[i] = array[i + gap];
                array[i + gap] = temp;
                swapped = true;
            }

            i++;
        }
    }
}
