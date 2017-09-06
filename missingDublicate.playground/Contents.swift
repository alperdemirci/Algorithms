//: Playground - noun: a place where people can play

import UIKit

//solution can be done with Hash table - space complexity is O(n)
//better solution is to use XOR operator meaning using dictionary

func MissingDublicate (dublicateArray: [Int]) -> [Int] {
    
    var arrayItemsWithCount = [Int: Int]()
    var missingNumberArray = [Int]()
    for (key, num) in dublicateArray.enumerated() {
        if let count = arrayItemsWithCount[num] {
            arrayItemsWithCount[num] = count + 1
        } else {
            arrayItemsWithCount[num] = 1
        }
    }
    
    for (key, value) in arrayItemsWithCount {
        if value == 1 {
            missingNumberArray.append(key)
        }
    }
    return missingNumberArray.sorted() //sorted method is optional in this case
}

let missingNumber = MissingDublicate(dublicateArray: [1, 2, 3, 4, 1, 2, 5])
print("The missing numbers are:", missingNumber)
