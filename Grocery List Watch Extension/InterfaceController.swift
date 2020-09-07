//
//  InterfaceController.swift
//  Grocery List Watch Extension
//
//  Created by Tatsuya Moriguchi on 9/7/20.
//  Copyright © 2020 Tatsuya Moriguchi. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var myTable: WKInterfaceTable!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let array = ["Apples", "Oranges", "Blueberries", "Peaches", "Strawberries"]
        
        myTable.setNumberOfRows(5, withRowType: "cell")
        
        var n = 0
        for fruite in array {
            let row = myTable.rowController(at: n) as! RowController
            //row.myLabel.setText(array[n])
            row.myLabel.setText(fruite)
            n += 1
        }

        
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    

}
