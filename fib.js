// node fib.js == 5s, 89.308ms
var start = process.hrtime();

var elapsed_time = function(note){
    var precision = 3; // 3 decimal places
    var elapsed = process.hrtime(start)[1] / 1000000; // divide by a million to get nano to milli
    console.log(process.hrtime(start)[0] + " s, " + elapsed.toFixed(precision) + " ms - " + note); // print message + time
    start = process.hrtime(); // reset the timer
}

function fib(n) {
    if (n <= 0) {
        return 0;
    }
    if (n == 1 || n == 2) {
        return 1;
    }
    return fib(n-1) + fib(n-2);
}

function main() {
    ntimes = 42;
    for(i = 1; i <= ntimes; i++) {
        process.stdout.write(fib(i).toString());
        process.stdout.write(" ");
        process.stdout.flush;
    }
    console.log();
    elapsed_time("")
    //console.log("%f seconds" % (end - start,))
}

main();
