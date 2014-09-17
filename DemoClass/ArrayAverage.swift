//
//  ArrayAverage.swift
//  DemoClass
//
//  Created by Dzung Nguyen on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

extension Array {
    
    func average() -> Double {
        let length = self.count
        var sum = 0
        for var i = 0 ; i < length ; ++i {
            sum += (self[i] as Int)
        }
        return Double(sum) / Double(length)
    }
}

class ArrayAverage: ConsoleScreen {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.testAVG()
    }
    
    func testAVG() {
        var newArr = [1, 2, 5, 9, 10, 15]
        let calculatedArr = newArr.average()
        writeln("\(calculatedArr)")
    }
    
}
