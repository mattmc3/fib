// mcs Fib.cs && mono Fib.exe
// Time taken: 3251.2645ms
using System;
using System.Diagnostics;

public class Fib {
    public static int fib(int n) {
        if (n <= 0) {
            return 0;
        }
        else if (n <= 2) {
            return 1;
        }
        return fib(n-1) + fib(n-2);
    }

    public static void Main() {
        Stopwatch sw = Stopwatch.StartNew();

        int ntimes = 42;
        for(int i = 1; i <= ntimes; i++) {
            Console.Write(fib(i));
            Console.Write(" ");
        }
        sw.Stop();

        Console.WriteLine("\nTime taken: {0}ms", sw.Elapsed.TotalMilliseconds);
    }
}
