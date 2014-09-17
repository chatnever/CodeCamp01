//
//  Fooballer.swift
//  DemoClass
//
//  Created by Dzung Nguyen on 9/16/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

extension Array {
    func randomItem() -> T {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}

class Footballer: ConsoleScreen {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.footballer()

        // Do any additional setup after loading the view.
    }
    
    func footballer() {
        var GK = ["Petr Cech", "Thibaut Curtois", "Mark Schwarzer"]
        var MF = ["Eden Hazard", "Oscar", "Fabregas", "Mikel", "Matic", "Willian"]
        var FW = ["Diego Costa", "Loic Remy", "Drogba"]
        var DF = ["Terry", "Ivanovic", "Gary Cahill", "Fellipe Luis", "César Azpilicueta"]
        
        let GK1 = GK.randomItem()
        let GK2 = GK.randomItem()
        writeln("GKs are: \(GK1), \(GK2)")
        
        let MF1 = MF.randomItem()
        let MF2 = MF.randomItem()
        writeln("MFs are: \(MF1), \(MF2)")
        
        let FW1 = FW.randomItem()
        let FW2 = FW.randomItem()
        writeln("FWs are: \(FW1), \(FW2)")
        
        let DF1 = DF.randomItem()
        let DF2 = DF.randomItem()
        writeln("DFs are: \(DF1), \(DF2)")
        
    }

}
