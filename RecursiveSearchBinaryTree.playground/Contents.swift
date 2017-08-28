//: Playground - noun: a place where people can play

import UIKit

//    10
//    /\
//   5   14
//  /    /\
//  1  11   20

class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)
let eleventNode = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: eleventNode, rightChild: twentyNode)
let tenNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)



func search(node: Node?, searcHValue:Int) -> Bool {
    if node == nil {
        return false
    }
    if node?.value == searcHValue {
        return true
    }
    else if searcHValue < node!.value {
        return search(node: node?.leftChild, searcHValue: searcHValue)
    } else {
        return search(node: node?.rightChild, searcHValue: searcHValue)
    }

}

search(node: tenNode, searcHValue: 0)
