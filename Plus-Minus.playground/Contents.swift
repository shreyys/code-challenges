import UIKit

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    var dict : [String: Int] = [:]
    let elements = arr.count
    var positives = 0, negatives = 0, zeros = 0
    for i in arr{
        if i > 0{
            // positive
            positives += 1
            dict["+"] = positives
        }
        if i == 0{
            // zero
            zeros += 1
            dict["0"] = zeros
        }
        if i < 0{
            // negative
            negatives += 1
            dict["-"] = negatives
        }
    }
    print(String(format: "%.6f", arguments: [Double(Double(dict["+"] ?? 0)/Double(elements))]))
    print(String(format: "%.6f", arguments: [Double(Double(dict["-"] ?? 0)/Double(elements))]))
    print(String(format: "%.6f", arguments: [Double(Double(dict["0"] ?? 0)/Double(elements))]))
}
