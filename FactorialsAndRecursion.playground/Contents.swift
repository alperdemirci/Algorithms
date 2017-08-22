//: Playground - noun: a place where people can play

import UIKit

func recursiveFactorial(value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    return value * recursiveFactorial(value: value - 1)
}
recursiveFactorial(value: 6)
