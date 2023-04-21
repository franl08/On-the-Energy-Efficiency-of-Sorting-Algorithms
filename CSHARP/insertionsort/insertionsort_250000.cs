using System;

class InsertionSort{   

    public static bool debug = false;

    public static void insertionSort(int[] array)
    {
        int n = array.Length;

        for (int i = 1; i < n; i++)
        {
            int key = array[i];
            int j = i - 1;

            while (j >= 0 && array[j] > key)
            {
                array[j + 1] = array[j];
                j--;
            }

            array[j + 1] = key;
        }
    }

    public static void Main()
    {
        insertionSort(ARRAY);
        if(debug){
            for(int i = 0; i < ARRAY.Length; i++){
                Console.Write(ARRAY[i] + " ");
            }
        }
    }
}