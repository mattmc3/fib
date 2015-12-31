// go run fib.go
// Fib ElapsedTime in seconds: 2.518877625s
package main

import (
    "fmt"
    "time"
    "log"
)

func fib(n int) int {
    if n <= 0 {
        return 0
    }
    if n == 1 || n == 2 {
        return 1
    }
    return fib(n-1) + fib(n-2)
}

func trace(s string) (string, time.Time) {
    log.Println("START:", s)
    return s, time.Now()
}

func un(s string, startTime time.Time) {
    endTime := time.Now()
    log.Println("  END:", s, "ElapsedTime in seconds:", endTime.Sub(startTime))
}

func main() {
    defer un(trace("Fib"))
    for i := 1; i <= 42; i++ {
        fmt.Printf("%d ", fib(i))
    }
    fmt.Println()
}
