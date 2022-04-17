import UIKit

func diagonalDifference(arr: [[Int]]) -> Int {
    let n = arr.count
    var l2R: Int = 0
    var r2L: Int = 0
    var validArray = arr
    // we are checking only for NxN matrix, so remove the un-even items containing items less/more than N items
    for i in 0..<(n - 1){
        if arr[i].count != n  {
            validArray.remove(at: i)
        }
    }
    // Sum up the dialgonals..
    for i in 0...(n-1){
        l2R = l2R + validArray[i][i]
        r2L = r2L + validArray[n - 1 - i][i]
    }
    return Int((r2L - l2R).magnitude)

}
