//
//  ViewController.swift
//  rpgoop
//
//  Created by shivam kaushik on 07/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  

  @IBOutlet var printLbl: UILabel!
  @IBOutlet var playerHpLbl: UILabel!
  @IBOutlet var enemyHpLbl: UILabel!
  @IBOutlet var enemyImg: UIImageView!
  @IBOutlet var chestBtn: UIButton!
  
  var player: Player!
  var enemy: Enemy!
  var chestMessage: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    player = Player(name: "DirtyLaundry21", hp: 110, attackPwr: 20)
    generateRandomEnemy()
    playerHpLbl.text = "\(player.hp) HP"
    
    
  }
  
  func generateRandomEnemy() {
    let rand = Int(arc4random_uniform(2))
    if rand == 0 {
      enemy = Kimara(startingHp: 50, attackPwr: 12)
    } else {
      enemy = DevilWizard(startingHp: 60, attackPwr: 15)
    }
    enemyImg.hidden = false
  }

  @IBAction func onChestTapped(sender: UIButton) {
    chestBtn.hidden = true
    printLbl.text = chestMessage
    NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
  }

  @IBAction func attacktapped(sender: UIButton) {
    if enemy.attemptAttack(player.attackPwr) {
      printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
      enemyHpLbl.text = "\(enemy.hp) HP"
    } else {
      printLbl.text = "Attacked was unsuccessful!"
    }
    
    if let loot = enemy.dropLoot() {
      player.addItemToInventory(loot)
      chestMessage = "\(player.name) found \(loot)"
      chestBtn.hidden = false
    }
    
    if !enemy.isAlive {
      enemyHpLbl.text = ""
      printLbl.text = "Killed \(enemy.type)"
      enemyImg.hidden = true
    }
  }
  
  
  
  
  
}

