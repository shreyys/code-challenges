/*
 You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

 Example

 candles = [4,4,1,3]

 The maximum height candles are 4 units high. There are 2 of them, so return 2.
 */

import UIKit

func birthdayCakeCandles(candles: [Int]) -> Int {
    // Write your code here
    var dict = [Int:Int]()
    for i in 0...candles.count - 1{
        if var value = dict[candles[i]]{
            value += 1
            dict[candles[i]] = value
        }else{
            dict[candles[i]] = 1
        }
    }
    let sortedArray = dict.values.sorted(by: <)
    print(sortedArray)
    return sortedArray.last!
}
