//: Playground - noun: a place where people can play

import UIKit

// Given a set of array, find two number that adds up to a certain sum

// I will try to do this with two answers based on the case
// 1) if the numbers are not sorted, I will use a hash table to look up the numbers like if [1, 4, 3, 6] if complement of 1 (is 7 ) is not in the dictionary so insert in and keep looking

// 2) if the number is sorted we can just do a linear search with two numbers one that  contains the lowest and that contains the highest, if sum of two is bigger, move the lowest number pointer, if sum of numbers is higher than the given sum move left the highest pointer.



struct ReturnArrayAndAnswer {
    var setOfNum: [Int]
    var answer: Bool
}

//  Dictionary = [ key: index ]


//Unsorted array example
func findSetOfTwoBasedOnSumIfArrayUnsorted(givenArray: [Int], sum: Int) -> ReturnArrayAndAnswer {
    var returnThisSet = ReturnArrayAndAnswer(setOfNum: [], answer: false)
    var complementOfArrayDictionary = [Int: Int]()
    // loop thru the givenArry
    for (_ , numberFromArray) in givenArray.enumerated() { // enumatated returns a (index, key) for loop
        let complimentaryNumber = complementOfArrayDictionary[numberFromArray] ?? 0
        //if the complement of the given number is not equal to a hash number write them in to the table
        if complimentaryNumber != 8 - numberFromArray {
            complementOfArrayDictionary[numberFromArray] = 8 - numberFromArray
            //if the complementary number is equal to a number in hash return them all with true answer
        } else {
            returnThisSet = ReturnArrayAndAnswer(setOfNum: [numberFromArray, complementOfArrayDictionary[numberFromArray]!], answer: true)
            return returnThisSet
        }
    }
    return returnThisSet
}


let myAnswerForUnortedArray  = findSetOfTwoBasedOnSumIfArrayUnsorted(givenArray: [4, 1, 2, 4], sum: 8)
print("myAnserForThisSetOfNumber", myAnswerForUnortedArray)

// End of the 1st solution



// here is the second solution
func findSetOfTwoBasedOnSumIfArraySorted (givenArray: [Int], sum:Int) -> ReturnArrayAndAnswer {
    var returnThisSet = ReturnArrayAndAnswer(setOfNum: [], answer: false)
    var lowerIndex: Int = 0
    var higherIndex: Int = givenArray.count-1
    
    //while my lowerpointer is smaller than bigger pointer
    while (lowerIndex < higherIndex) {
        var sumOfTheNumbers = givenArray[lowerIndex] + givenArray[higherIndex]
        //Check the condition where if sum of my two number is equal to the given sum number
        if sumOfTheNumbers == sum {
            returnThisSet = ReturnArrayAndAnswer(setOfNum: [givenArray[lowerIndex], givenArray[higherIndex]], answer: true)
            return returnThisSet
        //if the sum of the two number is smaller than the sum, increase the lower pointer location
        } else if sumOfTheNumbers < sum {
            lowerIndex += 1
        //if the sum of the two number is bigger than the sum, reduce the lower pointer location
        } else {
            higherIndex -= 1
        }
    }
    return returnThisSet
}

let myAnswerForSortedArray = findSetOfTwoBasedOnSumIfArraySorted(givenArray: [1, 1, 2, 3, 4, 4], sum: 8)
print("the is the answer from sorted array: ", myAnswerForSortedArray)

//End of the 2nd solution

