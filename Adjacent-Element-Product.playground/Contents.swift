/*
 Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.

 Example

 For inputArray = [3, 6, -2, -5, 7, 3], the output should be
 solution(inputArray) = 21.

 7 and 3 produce the largest product.

 Input/Output

 [execution time limit] 6 seconds (swift)

 [input] array.integer inputArray

 An array of integers containing at least two elements.

 Guaranteed constraints:
 2 ≤ inputArray.length ≤ 10,
 -1000 ≤ inputArray[i] ≤ 1000.

 [output] integer

 The largest product of adjacent elements.
 */

import Foundation

func solution(inputArray: [Int]) -> Int {
    var counter = 0
    var j = counter + 1
    var solutionDict : [Int: [Int]] = [:]
    while counter < inputArray.count - 1{
        let num1 = inputArray[counter]
        let num2 = inputArray[j]
        let product = num1 * num2
        solutionDict[product] = [num1, num2]
        counter += 1
        j = counter + 1
    }
    //print(solutionDict.description)
    let sortedDict = solutionDict.keys.sorted(by: {$0 > $1})
    return sortedDict.first ?? 0
}
