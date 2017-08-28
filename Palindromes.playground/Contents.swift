//: Playground - noun: a place where people can play

import UIKit

//count how many Palindromes in a sentence
//check if the string is empty
//check if the first and last characters are matching
//count how many palindrome in the given sentence


let sentence = "Madam civic civic"

func PalindromesCount(sentence: String) -> [String:Int] {
    if sentence.isEmpty {
        return [:]
    }
    let sentenceLoweCase = sentence.lowercased()
    let words = sentenceLoweCase.components(separatedBy: " ")
    var wordDictionary = [String: Int]()
    
    words.forEach { (word) in
        if isPalindrome(word: word) {
            print("found a palindrome:", word)
            let count = wordDictionary[word] ?? 0
            wordDictionary[word] = count + 1
        }
    }
    return wordDictionary
}

private func isPalindrome(word: String) -> Bool {
    var characters = Array(word.characters)
    var characterIndex = characters.count
    var currentIndex = 0
    
    while currentIndex < characterIndex / 2 {
        if characters[currentIndex] != characters[characterIndex - 1] {
            return false
        }
        currentIndex += 1
        characterIndex -= 1
    }
    return true
}

PalindromesCount(sentence: sentence)