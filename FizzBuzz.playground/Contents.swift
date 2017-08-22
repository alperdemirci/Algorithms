//: Playground - noun: a place where people can play

import UIKit

var fizzBuzzNumber = [Int]()
for i in 1...100 {
    fizzBuzzNumber.append(i)
}

for index in fizzBuzzNumber {
    if (index % 15 == 0) {
        print("\(index) FizzBuzz")
    } else if (index % 3 == 0)  {
        print("\(index) fizz")
    } else if (index % 5 == 0) {
        print("\(index) Buzz")
    } else {
        print(index)
    }
}
