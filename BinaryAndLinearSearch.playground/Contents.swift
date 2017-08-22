//: Playground - noun: a place where people can play

import UIKit

//generate the numbers from 1 to 100
var hundred = [Int]()

for i in 1...100 {
    hundred.append(i)
}
//pass the searchValue and the array of the numbers to do the binary search
func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count-1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex+rightIndex)/2
        let middleValue = array[middleIndex]
        //this will be executed the number of the this while loops
        print("middleValue \(middleValue), leftIndex\(leftIndex), rightIndex\(rightIndex), [\(array[leftIndex]), \(array[rightIndex])]")
        if middleValue == searchValue {
            return true
        }
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearch(searchValue: 88, array: hundred))

//this is just a linear searh
func linearSearch(searchValue: Int, array: [Int]) -> Bool {
    for num in array {
        if num == searchValue {
                return true
        }
    }
    return false
}
//print(linearSearch(searchValue: 7, array: numbers))


















