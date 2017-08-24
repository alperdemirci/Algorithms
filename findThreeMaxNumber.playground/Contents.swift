//: Playground - noun: a place where people can play

import UIKit

func greatestThree(numbers: [Int]) -> Int {
    var first = 0
    var second = 0
    var third = 0
    var num = 0
    for i in 0...numbers.count-1 {
        num = numbers[i]
        if num > third {
            if num > second {
                if third > second {
                    if num > first {
                        second = first
                        first = num
                    } else {
                        second = num
                    }
                }
                else {
                    third = num
                }
            }
        }
    }
    return first * second * third
}
greatestThree(numbers: [1, 3, 2, 7, 4, 9, 11])