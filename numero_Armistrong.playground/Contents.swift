//: Playground - noun: a place where people can play

import UIKit

func isArmstrongNumber(n : Int) -> Bool {
    var result = false
    var digits : String = String(n)
    
    for digit in digits.characters {
        var d = Int(digit)
        
    }
    
    return result
}

var n = 153

print(isArmstrongNumber(n: n))
