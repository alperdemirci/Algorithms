//: Playground - noun: a place where people can play

import UIKit

//This is an algorithm that flattens a nested Array


func flattenArray(nestedArray: [Any]) -> [Int] {
    
    var myFlattenedArray = [Int]()
    for element in nestedArray {
        if element is Int {
            myFlattenedArray.append(element as! Int)
        } else if element is [Any] {
            let recursiveResult = flattenArray(nestedArray: element as! [Any])
            for elementInRecursive in recursiveResult {
                myFlattenedArray.append(elementInRecursive)
            }
        }
    }
    
    return myFlattenedArray
}

let result = flattenArray(nestedArray: [1, [2, 3], [3, 4],4])

print("The Result is:", result)

// [1, 2] -> [1, 2]

// [1, 2, [3, 4]] -> [1, 2, 3, 4]

