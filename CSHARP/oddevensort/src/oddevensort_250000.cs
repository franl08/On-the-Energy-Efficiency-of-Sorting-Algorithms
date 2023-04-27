using System;

class OddEvenSort{  

    public static bool debug = false;

    public static void oddEvenSort(int[] arr)
    {
        int n = arr.Length;
        bool sorted = false;
        while (!sorted)
        {
            sorted = true;
            for (int i = 1; i < n - 1; i += 2)
            {
                if (arr[i] > arr[i + 1])
                {
                    int temp = arr[i];
                    arr[i] = arr[i + 1];
                    arr[i + 1] = temp;
                    sorted = false;
                }
            }
            for (int i = 0; i < n - 1; i += 2)
            {
                if (arr[i] > arr[i + 1])
                {
                    int temp = arr[i];
                    arr[i] = arr[i + 1];
                    arr[i + 1] = temp;
                    sorted = false;
                }
            }
        }
    }

    public static void Main()
    {
        oddEvenSort(ARRAY);
        if(debug){
            for(int i = 0; i < ARRAY.Length; i++){
                Console.Write(ARRAY[i] + " ");
            }
        }
    }
}