// gcc -o fibc fib.c
// Time taken 11 seconds 654 milliseconds
#include <stdio.h>
#include <time.h>

int fib(int n) {
    if(n <= 2) {
        return 1;
    }
    return fib(n-2) + fib(n-1);
}

int main() {
    clock_t start = clock(), diff;

    for(int i = 1; i <= 42; i++) {
        printf("%d ", fib(i));
        fflush(stdout);
    }
    diff = clock() - start;
    int msec = diff * 1000 / CLOCKS_PER_SEC;
    printf("\nTime taken %d seconds %d milliseconds\n", msec/1000, msec%1000);
    return 0;
}
