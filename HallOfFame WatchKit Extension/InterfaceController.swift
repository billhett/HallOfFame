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
    var players : [BasketballPlayer] = []
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        var damian = BasketballPlayer()
        damian.name = "Damian Lillard"
        damian.height = "6' 3\""
        damian.weight = 194
        damian.homeTown = "Los Angeles"
        damian.circleImageName = "damian.png"
        damian.bigImageName = "damian-big.png"
        
        var sheed = BasketballPlayer()
        sheed.name = "Rasheed Wallace"
        sheed.height = "7' 0\""
        sheed.weight = 229
        sheed.homeTown = "Chicago"
        sheed.circleImageName = "rasheed.png"
        sheed.bigImageName = "rasheed-big.png"
        
        var jimmer = BasketballPlayer()
        jimmer.name = "Jimmer Fredette"
        jimmer.height = "6' 2\""
        jimmer.weight = 194
        jimmer.homeTown = "Atlanta"
        jimmer.circleImageName = "jimmer.png"
        jimmer.bigImageName = "jimmer-big.png"
        
        self.players = [damian, sheed, jimmer]
        // table needs to answer two questions
        // number of rows:
        self.playerTable.setNumberOfRows(players.count, withRowType: "PlayerRow")
        // whats in the row
        var index = 0
        
        for player in players {
            var row = self.playerTable.rowController(at: index) as! PlayerRowController
            row.playerNameLabel.setText(String(player.name))
            var circleImage = UIImage(named: player.circleImageName)
            row.playerImage.setImage(circleImage)
            index += 1
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print("row \(rowIndex)")
        print("player count \(players.count)")
        var player = self.players[rowIndex]
        print("player is \(player.name)")
        self.pushController(withName: "PlayerDetailController", context: player)
        
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
