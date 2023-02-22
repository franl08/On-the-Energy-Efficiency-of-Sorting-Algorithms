public static void CycleSort(int[] array)
{
    int n = array.Length;

    for (int cycleStart = 0; cycleStart < n - 1; cycleStart++)
    {
        int item = array[cycleStart];
        int pos = cycleStart;

        for (int i = cycleStart + 1; i < n; i++)
        {
            if (array[i] < item)
            {
                pos++;
            }
        }

        if (pos == cycleStart)
        {
            continue;
        }

        while (item == array[pos])
        {
            pos++;
        }

        int temp = array[pos];
        array[pos] = item;
        item = temp;

        while (pos != cycleStart)
        {
            pos = cycleStart;

            for (int i = cycleStart + 1; i < n; i++)
            {
                if (array[i] < item)
                {
                    pos++;
                }
            }

            while (item == array[pos])
            {
                pos++;
            }

            temp = array[pos];
            array[pos] = item;
            item = temp;
        }
    }
}
