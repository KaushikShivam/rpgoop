//
//  Kimara.swift
//  rpgoop
//
//  Created by shivam kaushik on 07/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import Foundation

class Kimara: Enemy {
  
  let IMMUNE_MAX = 15
  
  override var loot: [String] {
    return ["Touch Hide", "Kimara Venom", "Rare Trident"]
  }
  
  override var type: String {
    return "Kimara"
  }
  
  override func attemptAttack(attackPwr: Int) -> Bool {
    if attackPwr >= IMMUNE_MAX {
      return super.attemptAttack(attackPwr)
    } else {
      return false
    }
  }
  
  
  
  
  
  
  
  
  
}