//: Playground - noun: a place where people can play

import UIKit

//question: Find the three greatest number in the array and return the multiplication of them

func greatestThree(numbers: [Int]) -> Int {
    guard numbers.count >= 3 else {
        return 0
    }
    var firstGreatest = numbers[0]
    var secondGreatest = 0
    var thirdGreatest = 0
    for i in 0...numbers.count-1 {
        if numbers[i] > firstGreatest {
            thirdGreatest = secondGreatest
            secondGreatest = firstGreatest
            firstGreatest = numbers[i]
        } else if (numbers[i] > secondGreatest) && (numbers[i] < firstGreatest) {
            thirdGreatest = secondGreatest
            secondGreatest = numbers[i]
        } else if (numbers[i] > thirdGreatest) && (numbers[i] < secondGreatest) {
            thirdGreatest == numbers[i]
        }
    }
    return firstGreatest * secondGreatest * thirdGreatest
}
greatestThree(numbers: [1, 0, 4, 6, 7, 8])
