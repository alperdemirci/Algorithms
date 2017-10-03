//: Playground - noun: a place where people can play

import UIKit

//Car parking problem. An array given represents actual order of cars need to be parked. Like for example order is 4,6,5,1,7,3,2,empty. If cars are parked in some order like empty,1,2,3,7,6,4,2. Some person needs to get them into correct order, list out all instructions to the person to get in correct order with least number of swaps.

var y = 0
var index = 0

func SortingCarParking(parkedArray: [Int]) -> [Int] {
    var parkedArray = parkedArray
    let correctArray =  [4, 6, 5, 1, 7, 3, 2, 0]
    while y < correctArray.count && index < correctArray.count {
        for i in index...parkedArray.count-1 {
            if correctArray[i] == parkedArray[y] {
                if y != i {
                    //parkedArray.swapAt(y, i)
                    let temp = parkedArray[y]
                    parkedArray[y] = parkedArray[i]
                    parkedArray[i] = temp
                }
                y = 0
                index = i + 1
            } else {
                y += 1
                index = i
            }
            return SortingCarParking(parkedArray:parkedArray)
        }
    }
    return parkedArray
}

let correctParking = SortingCarParking(parkedArray: [1, 2, 3, 7, 6, 4, 2, 0])
print(correctParking)





