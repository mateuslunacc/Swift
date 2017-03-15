//: Playground - noun: a place where people can play

import UIKit

print("Hello Fibonacci!")

let qnt = 10
var last = 1
var cur = 1

print("\(last)\n\(cur)")
for i in 2..<qnt {
    var aux = last
    last = cur
    cur += aux
    print("\(cur)")
    
}