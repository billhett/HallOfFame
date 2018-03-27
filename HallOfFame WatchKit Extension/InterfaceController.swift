//
//  InterfaceController.swift
//  HallOfFame WatchKit Extension
//
//  Created by William Hettinger on 3/27/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var playerTable: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        var damian = BasketballPlayer()
        damian.name = "Damian Lillard"
        damian.height = "6' 3\""
        damian.weight = 194
        damian.homeTown = "Los Angeles"
        
        var sheed = BasketballPlayer()
        sheed.name = "Rasheed Wallace"
        sheed.height = "7' 0\""
        sheed.weight = 229
        sheed.homeTown = "Los Angeles"
        
        var jimmer = BasketballPlayer()
        jimmer.name = "Jimmer Fredette"
        jimmer.height = "6' 2\""
        jimmer.weight = 194
        jimmer.homeTown = "Los Angeles"
        
        var players = [damian, sheed, jimmer]
        // table needs to answer two questions
        // number of rows:
        self.playerTable.setNumberOfRows(players.count, withRowType: "PlayerRow")
        // whats in the row
        var index = 0
        
        for player in players {
            var row = self.playerTable.rowController(at: index) as! PlayerRowController
            row.playerNameLabel.setText(String(players[index].weight) + ":" + player.height)
            index += 1
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
