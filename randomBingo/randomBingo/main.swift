//
//  main.swift
//  randomBingo
//
//  Created by PDing ㅤ on 2023/07/31.
//

import Foundation



var comChoice = Int.random(in: 1...100)
var myChoice: Int = 1



while true {
    
    var userInput = readLine()
    
    if let input = userInput {
        
        if let number = Int(input) {
            
            myChoice = number
            
        }
        
    }
    
    
    if comChoice > myChoice {
        print("Up")
    } else if comChoice < myChoice {
        print("Down")
    } else {
        print("Bingo")
        break
    }
    
}




