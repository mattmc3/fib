# ruby fib.rb - 75.544086 seconds

def fib(n)
    if n <= 0
        return 1
    end
    if n == 1 or n == 2
        return 1
    end
    return fib(n-1) + fib(n-2)
end

def main()
    ntimes = 42
    t1 = Time.now

    for i in 1..ntimes
        print "%s " % fib(i)
    end

    puts ""
    t2 = Time.now
    delta = t2 - t1
    puts "%f seconds" % delta
end

main()
