//
//  main.swift
//  calculator-v2
//
//  Created by apple on 4/7/16.
//  Copyright © 2016 Sophie. All rights reserved.
//
//
//
// two element arity

import Foundation

func add(num1 : Int, num2 : Int) {
    print("\(num1) + \(num2) = \(num1 + num2)")
}
add(5, num2: 7)

func subtract(num1 : Int, num2 : Int) {
    print("\(num1) - \(num2) = \(num1 - num2)")
}
subtract(25, num2: 11)

func multiply(num1 : Int, num2 : Int) {
    print("\(num1) * \(num2) = \(num1 * num2)")
}
multiply(12, num2: 9)

func divide(num1 : Int, num2 : Int) {
    print("\(num1) / \(num2) = \(num1 / num2)")
}
divide(63, num2: 7)

func mathOp(num1 : Int, num2 : Int, op : (Int, Int) -> Int) -> Int {
    return op(num1, num2)
}
let result = mathOp(20, num2 : 4){ $0 + $1 }
print("Result = \(result)")

func arrayAdd(array : [Int]) -> Int {
    var count = 0
    var arrayAddResult: Int = 0
    while count < array.count {
        arrayAddResult = arrayAddResult + array[count]
        count = count + 1
    }
    return arrayAddResult
}
let arrayAddResult = arrayAdd([1, 7, 6, 1])
print("The sum of the array is \(arrayAddResult).")

func arrayMultiply(array : [Int]) -> Int {
    var count = 0
    var arrayMultiplyResult: Int = 1
    while count < array.count {
        arrayMultiplyResult = arrayMultiplyResult * array[count]
        count = count + 1
    }
    return arrayMultiplyResult
}
let arrayMultiplyResult = arrayMultiply([1, 4, 6, 1])
print("The multiply of the array is \(arrayMultiplyResult).")

func arrayCount(input : [Int]) -> Int {
    return input.count
}
let arrayCountResult = arrayCount([1, 2, 3, 4, 5, 6])
print("There are \(arrayCountResult) elements in this array.")

func arrayAvg(input : [Int]) -> Int {
    var sum = 0
    for index in 0 ..< input.count {
        sum += input[index]
    }
    return sum / input.count
}
let arrayAvgResult = arrayAvg([10, 20, 30, 40, 50])
print("The average of the elements is \(arrayAvgResult).")

typealias arrayOp = ([Int]) -> Int
let arrayOperation: ([Int], arrayOp) -> Int = { (arr, op) in
    return op(arr)
}
print("\(arrayOperation([1, 2, 3, 4], arrayAdd))")
print("\(arrayOperation([5, 2, 3, 1], arrayMultiply))")
print("\(arrayOperation([3, 4], arrayCount))")
print("\(arrayOperation([10, 10, 10, 10], arrayAvg))")


func tupleAdd(first : (Int, Int), second : (Int, Int)) -> (Int, Int){
    return (first.0 + second.0, first.1 + second.1)
}
let tupleAddResult = tupleAdd((3, 4), second : (3, 9))
print("The sum of the tuples is \(tupleAddResult).")

func tupleSub(first : (Int, Int), second : (Int, Int)) -> (Int, Int){
    return (first.0 - second.0, first.1 - second.1)
}
let tupleSubResult = tupleSub((3, 14), second : (3, 9))
print("The subtract result of the tuples is \(tupleSubResult).")


func dicAdd(first: Dictionary <String, Int>, second: Dictionary <String , Int>) -> Dictionary <String, Int> {
    let final = [
        "x" : first["x"]! + second["x"]!,
        "y" : first["y"]! + second["y"]!
    ]
    return final
}
print("\(dicAdd(["x": 2, "y": 3], second : ["x": 4, "y": 7]))")

func dicSub(first: Dictionary <String, Int>, second: Dictionary <String , Int>) -> Dictionary <String, Int> {
    let final = [
        "x" : first["x"]! - second["x"]!,
        "y" : first["y"]! - second["y"]!
    ]
    return final
}
print("\(dicSub(["x": 12, "y": 13], second : ["x": 4, "y": 7]))")

