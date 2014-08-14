//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by John Readey on 8/12/14.
//  Copyright (c) 2014 Wonderland. All rights reserved.
//

import Foundation
// 1
class TipCalculatorModel {
    
    // 2
    var total: Double
    var taxPct: Double
    var subtotal: Double {
    get {
        return total / (taxPct + 1)
        }
    }
    
    // 3
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
        
    }
    
    // 4
    func calcTipWithTipPct(tipPct:Double) -> Double {
        var foo = Dictionary<Int, Double>()
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> Dictionary<Int, Double> {
    let possibleTipsInferred = [0.15, 0.18, 0.20]
    
    var retval = Dictionary<Int, Double>()
    for possibleTip in possibleTipsInferred {
    let intPct = Int(possibleTip*100)
    retval[intPct] = calcTipWithTipPct(possibleTip)
    }
    return retval
    }
    
    
}
 