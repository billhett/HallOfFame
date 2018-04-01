//
//  PlayerDetailInterfaceController.swift
//  HallOfFame WatchKit Extension
//
//  Created by William Hettinger on 3/28/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import WatchKit
import Foundation


class PlayerDetailInterfaceController: WKInterfaceController {

    @IBOutlet var playerMap: WKInterfaceMap!
    
    @IBOutlet var playerNameLabel: WKInterfaceLabel!
    
    @IBOutlet var playerDetailImage: WKInterfaceImage!
    
    @IBOutlet var playerDetailHeight: WKInterfaceLabel!
    
    @IBOutlet var playerDetailWeight: WKInterfaceLabel!
    
    @IBOutlet var playerDetailHometown: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        var player = context as! BasketballPlayer
        playerNameLabel.setText(player.name)
        playerDetailHeight.setText(player.height)
        playerDetailWeight.setText(String(player.weight))
        playerDetailHometown.setText(player.homeTown)
        var bigImage = UIImage(named: player.bigImageName)
        playerDetailImage.setImage(bigImage)
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
