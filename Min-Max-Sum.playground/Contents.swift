/*
 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

 Example

 The minimum sum is  and the maximum sum is . The function prints
 
 Sample Input

 1 2 3 4 5
 Sample Output

 10 14
 Explanation

 The numbers are 1,2,3,4 and 5. Calculate the following sums using four of the five integers:

 Sum everything except 1, the sum is 2+3+4+5 = 14.
 Sum everything except 2, the sum is 1+3+4+5 = 13.
 Sum everything except 3, the sum is 1+2+4+5 = 12.
 Sum everything except 4, the sum is 1+2+3+5 = 11.
 Sum everything except 5, the sum is 1+2+3+4 = 10.
 */

import UIKit

func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    var sumOfArray = [Int]()
    for j in 0...arr.count-1{
        var sum = 0
        let removeNum = arr[j]
        for i in 0...arr.count-1{
        sum = sum + arr[i]
    }
        //print(removeNum)
        sum = sum - removeNum
        sumOfArray.append(sum)
        //print(sum)
    }
    sumOfArray = sumOfArray.sorted(by: <)
    print (sumOfArray.first!,  sumOfArray.last!)
}
