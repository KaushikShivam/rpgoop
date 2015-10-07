//
//  Enemy.swift
//  rpgoop
//
//  Created by shivam kaushik on 07/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import Foundation

class Enemy: Character {
  
  var loot: [String] {
    return ["Rusty dagger", "Cracked Buckler"]
  }
  
  var type : String {
    return "Grunt"
  }
  
  func dropLoot() -> String? {
    if !isAlive {
      let rand = Int(arc4random_uniform(UInt32(loot.count)))
      return loot[rand]
    } else {
      return nil
    }
  }
  
}