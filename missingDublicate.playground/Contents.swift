//: Playground - noun: a place where people can play

import UIKit

//solution can be done with Hash table - space complexity is O(n)
//better solution is to use XOR operator meaning using dictionary

func MissingDublicate (dublicateArray: [Int]) -> [Int] {
    
    var arrayItemsWithCount = [Int: Int]()
    var missingNumberIs = [Int]()
    for (key, num) in dublicateArray.enumerated() {
        if let count = arrayItemsWithCount[num] {
            arrayItemsWithCount[num] = count + 1
        } else {
            arrayItemsWithCount[num] = 1
        }
    }
    for (key, value) in arrayItemsWithCount {
        if value == 1 {
            missingNumberIs.append(key)
        }
    }
    return missingNumberIs
}

let missingNumberIs = MissingDublicate(dublicateArray: [1, 1, 2, 2, 3, 3, 4, 5, 6, 4])
print("The missing numbers are:", missingNumberIs)
