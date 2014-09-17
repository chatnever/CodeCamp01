//
//  NonDuplicateArray.swift
//  DemoClass
//
//  Created by Dzung Nguyen on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

extension Array {
    
    func uniq<S : SequenceType, T : Hashable where S.Generator.Element == T>(source: S) -> [T] {
        var buffer = Array<T>()
        var addedDict = [T: Bool]()
        for item in source {
            if  !(addedDict[item] != nil) {
                addedDict[item] = true
                buffer.append(item)
            }
        }
        return buffer
    }
    
}

class NonDuplicateArray: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.removeDuplicate()

    }
    
    func removeDuplicate() {
        var rawArr = [1, 2, 3, 2, 4, 5, 6, 5, 5, 3, 7]
        let fixArr = rawArr.uniq(rawArr)
        writeln("\(fixArr)")
    }

}
