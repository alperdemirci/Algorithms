//: Playground - noun: a place where people can play

//Given a list of N coins, their values (V1, V2, … , VN), and the total sum S. Find the minimum number of coins the sum of which is S (we can use as many coins of one type as we want), or report that it’s not possible to select coins in such a way that they sum up to S.


import UIKit


func findSmallestAmountOfCoin(coins: [Int], amountsInDollors: Double) -> String {
    guard amountsInDollors != 0 else {
        return "This is not possible"
    }
    
    let convertedToCentFromDolor = amountsInDollors * 100
    let amount = Int(convertedToCentFromDolor)
    var amountArray = [Int](repeating: -1, count: amount + 1)
    
    for i in 0...amount {
        for coin in coins {
            if coin == i {
                amountArray[i] = 1
                break
            }
            if coin < i && amountArray[i - coin] != -1 {
                if amountArray[i] == -1 {
                    amountArray[i] = amountArray[i - coin] + 1
                } else {
                    amountArray[i] = min(amountArray[i], amountArray[i - coin] + 1)
                }
            }
        }
    }
    if amountArray[amount] == -1 {
        return "It is not possible to select coins for $\(amountsInDollors)"
    } else {
        return "The minimum amount of coins you need for $\(amountsInDollors) is \(amountArray[amount]) coins"
    }
}

let theAmountofCoin = findSmallestAmountOfCoin(coins: [1, 5, 10, 25], amountsInDollors: 1.89)
print(theAmountofCoin)

let theAmountofCoin2 = findSmallestAmountOfCoin(coins: [5, 5, 10, 25], amountsInDollors: 1.89)
print(theAmountofCoin2)

let theAmountofCoin3 = findSmallestAmountOfCoin(coins: [5, 5, 10, 25], amountsInDollors: 0)
print(theAmountofCoin3)
