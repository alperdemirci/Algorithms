//: Playground - noun: a place where people can play

import UIKit


func mostCommonName(array: [String]) -> String {
    var nameDictionary = [String: Int]()
    
    for name in array {
        print(nameDictionary)
        if let count = nameDictionary[name] {
//            print(nameDictionary)
                nameDictionary[name] = count + 1
        } else {
            nameDictionary[name] = 1
        }
        
    }
    
//        print(nameDictionary)
    return ""
}
mostCommonName(array: ["Bob", "Nick", "John", "Matt", "Bob", "Bob"])