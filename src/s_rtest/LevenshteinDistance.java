package s_rtest;

public class LevenshteinDistance {

	 private static LevenshteinDistance _instance = null;
  /*   public static LevenshteinDistance Instance
     {
         get
         {
             if (_instance == null)
             {
                 return new LevenshteinDistance();
             }
             return _instance;
         }
     }
   */
     public int LowerOfThree(int first, int second, int third)
     {
         int min = first;
         if (second < min)
             min = second;
         if (third < min)
             min = third;
         return min;
     }

     public int Compare_Distance(String str1, String str2)
     {
         int[][] Matrix;
         int n = str1.length();
         int m = str2.length();

         int temp = 0;
         char ch1;
         char ch2;
         int i = 0;
         int j = 0;
         if (n == 0)
         {
             return m;
         }
         if (m == 0)
         {

             return n;
         }
         Matrix = new int[n + 1][ m + 1];

         for (i = 0; i <= n; i++)
         {
             Matrix[i][0] = i;
         }

         for (j = 0; j <= m; j++)
         {
             Matrix[0][j] = j;
         }

         for (i = 1; i <= n; i++)
         {
             ch1 = str1.toCharArray()[i-1];
             for (j = 1; j <= m; j++)
             {
                 ch2 = str2.toCharArray()[j - 1];
                 if (ch1 == ch2)
                 {
                     temp = 0;
                 }
                 else
                 {
                     temp = 1;
                 }
                 Matrix[i][j] = LowerOfThree(Matrix[i - 1][ j] + 1, Matrix[i][j - 1] + 1, Matrix[i - 1][j - 1] + temp);
             }
         }
       
         return Matrix[n][m];

     }

     public double LevenshteinDistancePercent(String str1, String str2)
     {
         int maxLenth = str1.length() > str2.length() ? str1.length() : str2.length();
         int val = Compare_Distance(str1, str2);
         return 1 - (double)val / maxLenth;
     }
}
