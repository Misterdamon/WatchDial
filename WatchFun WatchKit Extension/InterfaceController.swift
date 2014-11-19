//
//  InterfaceController.swift
//  WatchFun WatchKit Extension
//
//  Created by Sam Youtsey on 11/18/14.
//  Copyright (c) 2014 nebari. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!

    var dataBacking = [["name" : "Travis", "phone" : "555-555-5555", "email" : "travis@email.com"],
                        ["name" : "Sam", "phone" : "555-555-5555", "email" : "sam@email.com"],
                        ["name" : "Dylan", "phone" : "555-555-5555", "email" : "dylan@email.com"],
                        ["name" : "Jason", "phone" : "555-555-5555", "email" : "jason@email.com"]]

    override init(context: AnyObject?) {
        super.init(context: context)
        
        var rowCount = self.dataBacking.count
        self.table.setNumberOfRows(rowCount, withRowType: "MyRowController")
        
        for var i = 0; i < rowCount; i++ {
            var name = self.dataBacking[i]["name"] as String!
            var rowController = self.table.rowControllerAtIndex(i) as MyRowController
            rowController.mainLabel.setText(name)
            
            var image = UIImage(named: name)
            rowController.mainImage.setImage(image)
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        self.pushControllerWithName("DetailController", context: self.dataBacking[rowIndex])
    }
}
