/*
 Given a year, return the century it is in. The first century spans from the year 1 up to and including the year 100, the second - from the year 101 up to and including the year 200, etc.

 Example

 For year = 1905, the output should be
 solution(year) = 20;
 For year = 1700, the output should be
 solution(year) = 17.
 Input/Output

 [execution time limit] 6 seconds (swift)

 [input] integer year

 A positive integer, designating the year.

 Guaranteed constraints:
 1 ≤ year ≤ 2005.

 [output] integer

 The number of the century the year is in.


 */

import Foundation

func solution(year: Int) -> Int {
    let quo =  year/100
    let remainder = year%100
    print(remainder)
    return remainder >= 1 ? quo + 1 : quo
    
}
