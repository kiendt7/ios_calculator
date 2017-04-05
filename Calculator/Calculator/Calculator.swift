//
//  Calculator.swift
//  Calculator
//
//  Created by Admin on 4/5/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

enum Operators{
    case addition
    case subtraction
    case multiplication
    case devision
    case doNothing
}

struct CalculatorModel {
    let input1: Float
    let input2: Float
    let output: Float
    let type: Operators
    
    init(input1: Int, input2: Int, type:Operators){
        self.input1 = Float(input1)
        self.input2 = Float(input2)
        self.type = type
        self.output = Calculate(input1: self.input1, input2: self.input2, type: self.type)
    }
}

fileprivate func Calculate(input1: Float, input2: Float, type: Operators)->Float{
    switch type {
    case .addition:
        return (input1 + input2)
    case .devision:
        return (input1 / input2)
    case .multiplication:
        return (input1 * input2)
    case .subtraction:
        return (input1 - input2)
    default:
        return 0
    }
    
}
