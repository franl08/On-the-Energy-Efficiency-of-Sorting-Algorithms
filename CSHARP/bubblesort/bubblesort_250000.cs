using System;

class BubbleSort{

    public static bool debug = false;

    public static void bubbleSort(int[] array)
    {
        int n = array.Length;
        for (int i = 0; i < n - 1; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                if (array[j] > array[j + 1])
                {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }

    public static void Main()
    {
        bubbleSort(ARRAY);
        if(debug){
            for(int i = 0; i < ARRAY.Length; i++){
                Console.Write(ARRAY[i] + " ");
            }
        }
    }

}
