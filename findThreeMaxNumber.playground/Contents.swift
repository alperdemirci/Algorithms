//: Playground - noun: a place where people can play

import UIKit

func greatestThree(numbers: [Int]) -> Int {
    var first = numbers[0]
    var second = 0
    var third = 0
    for i in 0...numbers.count-1 {
        if numbers[i] > first {
            third = second
            second = first
            first = numbers[i]
        }
        if (numbers[i] > second) && (numbers[i] < first) {
            third = second
            second = numbers[i]
        }
        if (numbers[i] > third) && (numbers[i] < second) {
            third == numbers[i]
        }
    }
    return first * second * third
}
greatestThree(numbers: [1, 3, 2, 5, 7, 4, 9, 11])
