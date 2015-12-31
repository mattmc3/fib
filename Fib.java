// javac Fib.java && java Fib
// Total execution time: 1840ms

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

    public static void main(String args[]) {
        long startTime = System.currentTimeMillis();
        int ntimes = 42;
        for(int i = 1; i <= ntimes; i++) {
            System.out.print(fib(i));
            System.out.print(" ");
        }
        long endTime = System.currentTimeMillis();
        System.out.println("\nTotal execution time: " + (endTime-startTime) + "ms");
    }
}
