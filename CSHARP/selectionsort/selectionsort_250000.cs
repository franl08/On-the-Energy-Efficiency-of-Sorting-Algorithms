using System;

class SelectionSort{

    public static bool debug = false;

    public static void selectionSort(int[] array)
    {
        for (int i = 0; i < array.Length - 1; i++)
        {
            int minIndex = i;

            for (int j = i + 1; j < array.Length; j++)
            {
                if (array[j] < array[minIndex])
                {
                    minIndex = j;
                }
            }

            int temp = array[minIndex];
            array[minIndex] = array[i];
            array[i] = temp;
        }
    }

    public static void Main()
    {
        selectionSort(ARRAY);
        if(debug){
            for(int i = 0; i < ARRAY.Length; i++){
                Console.Write(ARRAY[i] + " ");
            }
        }
        
    }
}