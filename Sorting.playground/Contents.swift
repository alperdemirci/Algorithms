//: Playground - noun: a place where people can play

import UIKit

func Sorting(array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    var tempArray = array
    for i in 1..<tempArray.count {
        var y = i
        let temp = tempArray[y]
        while y > 0 && temp < tempArray[y - 1] {
//            swap(&tempArray[y - 1], &tempArray[y])
            tempArray[y] = tempArray[y-1]
            y -= 1
        }
        tempArray[y] = temp
    }
    return tempArray
}
Sorting(array: [9, 7, 2, 1, 5])