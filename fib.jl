# julia fib.jl
# elapsed time: 3.796649407 seconds
function fib(n)
    if n <= 0
        return 0
    end
    if n == 1 || n == 2
        return 1
    end
    return fib(n-1) + fib(n-2)
end

function main()
    ntimes = 42

    tic()
    for i in range(1, ntimes)
        print(fib(i), " ")
    end
    toc()
end

main()
