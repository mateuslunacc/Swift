//: Playground - noun: a place where people can play

import UIKit

func isArmstrongNumber(n : Int) -> Bool {
    //var result = false
    var digits : [String] = String(n).characters.map {String($0)}
    var sum = 0.0
    
    for digit in digits {
        //print(digit)
        sum += pow(Double(digit)!, Double(digits.count))
        
    }
    
    return Int(sum) == n
}

var n = 153

print(isArmstrongNumber(n: n))
