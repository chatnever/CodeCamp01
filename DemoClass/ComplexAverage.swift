//
//  ComplexAverage.swift
//  DemoClass
//
//  Created by Dzung Nguyen on 9/17/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

extension Array {
    
    func complexAverage() -> Double {
        let length = self.count
        var sum = 0
        for var i = 0 ; i < length ; ++i {
            sum += (self[i] as Int)
        }
        return Double(sum) / Double(length)
    }
}

class ComplexAverage: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.testComplexAVG()

        // Do any additional setup after loading the view.
    }

    func testComplexAVG() {
        let c1 = Complex(real: 1, imagine: 2)
        let c2 = Complex(real: 3, imagine: 5)
        var complxArr = [c1, c2]
        
        let complexAvg = complxArr.complexAverage()
        writeln("\(complexAvg)")
        
    }

}
