//
//  DevilWizard.swift
//  rpgoop
//
//  Created by shivam kaushik on 07/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
  
  override var loot: [String] {
    return ["Magic Wand", "Dark Amulet", "Salted Pork"]
  }
  
  override var type: String {
    return "Devil Wizard"
  }
  
}