var n = 6

while n > 0 {
    print(n)
    n -= 1
}


// achieve same result with recursion:
func output(n: Int) {  // step 1 base case
    if (n == 0) {
        return
    }
    else {
        print(n)  // step 2 perform the work
        output(n: n - 1)  // step 3 repeat recursion with smaller problem
    }
}

output(n: 6)


// Finding a sum of all numbers from 1 to m
var m = 6
var sum = 0

while m > 0 {
    sum += m
    m -= 1
}
/*
 Let’s now discuss the process of making the implementation recursive using the three-step process again:

 1. Base case: all the numbers from 1 to n have to be summed. Meaning that n has to be reduced by 1 each time until it is equal to 1, after that the algorithm has to stop. In other words, the algorithm must stop when n becomes 0, which will be the base case.
 
 2. Perform work to reach the base case: in this instance, the work entails summing up the numbers.
 
 3. Repeat the process: each time creating the sum with a call to the same function reducing n by 1.
 
 The implementation of the algorithm becomes:
 */
func output(m: Int) -> Int {
    if (m == 0) {  // step 1 base case
        return 0
    }
    else {
        return m + output(m: m - 1)  // step 2 and 3
    }
}
