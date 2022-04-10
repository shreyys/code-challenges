/*
 Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

 Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing only one element is also considered to be strictly increasing.

 Example

 For sequence = [1, 3, 2, 1], the output should be
 solution(sequence) = false.

 There is no one element in this array that can be removed in order to get a strictly increasing sequence.

 For sequence = [1, 3, 2], the output should be
 solution(sequence) = true.

 You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

 Input/Output

 [execution time limit] 6 seconds (swift)

 [input] array.integer sequence

 Guaranteed constraints:
 2 ≤ sequence.length ≤ 105,
 -105 ≤ sequence[i] ≤ 105.

 [output] boolean

 Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.
 */

import Foundation

func solution(sequence: [Int]) -> Bool {
    var i = 0
    while i <= sequence.count - 1 {
        var mutableSequence = sequence
        mutableSequence.remove(at: i)
        var j = 0
        var k = j + 1
        var counter = 0
        while j < mutableSequence.count - 1{
            if mutableSequence[j] < mutableSequence[k]{
                counter += 1
            }
            if mutableSequence[j] > mutableSequence[k]{
                counter -= 1
            }
            j += 1
            k += 1
        }
        if counter ==  mutableSequence.count - 1{
            return true
        }
        i += 1
    }
     return false
}


// Solution 2
func solution2(sequence: [Int]) -> Bool {
  if strictlyIncreasing(sequence: sequence){
      return true
  }
  var copySeq = sequence, indexs = [Int]()
  for i in 0..<(copySeq.count - 1) {
        if copySeq[i] >= copySeq[i+1]{
            indexs.append(i)
            indexs.append(i+1)
        }
    }
    print(indexs)
    for i in 0..<indexs.count{
        copySeq = sequence
        copySeq.remove(at: i)
        if strictlyIncreasing(sequence: copySeq){
            return true
        }
    }
    
    return false
}

func strictlyIncreasing(sequence: [Int]) -> Bool{
      for i in 0..<(sequence.count - 1) {
        if sequence[i] >= sequence[i+1]{
            return false
        }
    }
    return true
}

solution2(sequence: [1,1,2,3,4])


