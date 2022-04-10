import Foundation

func removeDuplicatesAndSortArray(sequence: [Int]) -> [Int]{
    let unique = sequence
        .enumerated()
        .filter{ sequence.firstIndex(of: $0.1) == $0.0 }
        .map{ $0.1 }
        .sorted{ $0 < $1}
    print(unique)
    return unique
}

//removeDuplicatesAndSortArray(sequence: [10,22,43,22,34,543,222,10,13,14,55,33,44,55])

