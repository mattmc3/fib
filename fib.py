from __future__ import print_function
# python2 fib.py - 109.437679 seconds
# python3 fib.py - 140.249396 seconds
from timeit import default_timer as timer
import sys

def fib(n):
    if n <= 0:
        return 1
    if n == 1 or n == 2:
        return 1
    return fib(n-1) + fib(n-2)

def main():
    ntimes = 42
    start = timer()
    for i in range(1, ntimes):
        print("%s " % fib(i), end='')
        sys.stdout.flush()
    end = timer()
    print()
    print("%f seconds" % (end - start,))

main()
