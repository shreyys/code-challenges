/*
 Given the string, check if it is a palindrome.

 Example

 For inputString = "aabaa", the output should be
 solution(inputString) = true;
 For inputString = "abac", the output should be
 solution(inputString) = false;
 For inputString = "a", the output should be
 solution(inputString) = true.
 Input/Output

 [execution time limit] 6 seconds (swift)

 [input] string inputString

 A non-empty string consisting of lowercase characters.

 Guaranteed constraints:
 1 ≤ inputString.length ≤ 105.

 [output] boolean

 true if inputString is a palindrome, false otherwise.
 */

import Foundation

func solution(inputString: String) -> Bool {
    var result: Bool = true
    if inputString.count == 1{
        result =  true
    }
    if inputString.count > 1 {
        let startIndex = inputString.startIndex
        let lastIndex = inputString.index(before: inputString.endIndex)
        var i: Int = 0
        while i <= Int(inputString.count/2){
            let findex = inputString.index(startIndex, offsetBy: i)
            let lindex = inputString.index(lastIndex, offsetBy: i >= 1 ? -i : 0)
            if inputString[findex] != inputString[lindex]{
                result = false
            }
            i += 1
        }
    }
    return result
}

//Solution 2 (not recommennded though)
func solution2 (inputString: String) -> Bool {
   return inputString == String(inputString.reversed())
}

solution(inputString: "aabaa")
