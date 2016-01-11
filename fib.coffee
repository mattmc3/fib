# coffee fib.coffee == 5s, 89.308ms

class Timer
    constructor: (@start, @end) ->

    reset: () ->
        @hrtime = null

    tic: () ->
        @hrtime = process.hrtime()

    toc: () ->
        console.log @toq()

    toq: () ->
        sec = process.hrtime(@hrtime)[0]
        ms = process.hrtime(@hrtime)[1] / 1000000000 # divide by a billion to get ms in sec
        return "#{sec+ms} seconds"

fib = (n) ->
    if n <= 0
        return 0
    if n == 1 || n == 2
        return 1
    return fib(n-1) + fib(n-2)

main = ->
    t = new Timer
    #t2 = new Timer
    t.tic()
    ntimes = 42
    for i in [1..ntimes]
        #t2.tic()
        process.stdout.write(fib(i).toString())
        process.stdout.write(" ")
        process.stdout.flush
        #t2.toc()
    console.log ""
    t.toc()
main()
