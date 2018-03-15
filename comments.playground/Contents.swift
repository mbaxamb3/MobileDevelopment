import UIKit

func fibonacciNumbers (howManyTerms : Int) {
    var firstNumber = 0
    var secondNumber = 1
    var x : Int
    for _ in 0 ... howManyTerms {
        
        x = firstNumber + secondNumber
        firstNumber = secondNumber
        secondNumber = x
        print (x)
    }

}

fibonacciNumbers(howManyTerms: 5)
