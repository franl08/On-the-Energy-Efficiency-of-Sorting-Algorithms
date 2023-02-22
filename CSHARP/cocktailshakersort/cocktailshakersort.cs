public static void CocktailShakerSort(int[] array)
{
    int left = 0;
    int right = array.Length - 1;

    while (left < right)
    {
        for (int i = left; i < right; i++)
        {
            if (array[i] > array[i + 1])
            {
                int temp = array[i];
                array[i] = array[i + 1];
                array[i + 1] = temp;
            }
        }

        right--;

        for (int j = right; j > left; j--)
        {
            if (array[j] < array[j - 1])
            {
                int temp = array[j];
                array[j] = array[j - 1];
                array[j - 1] = temp;
            }
        }

        left++;
    }
}
