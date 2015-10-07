//
//  Character.swift
//  rpgoop
//
//  Created by shivam kaushik on 07/10/15.
//  Copyright © 2015 shivam kaushik. All rights reserved.
//

import Foundation

class Character {
  
  private var _hp = 100
  private var _attackPwr = 10
  
  var attackPwr: Int {
    get {
      return _attackPwr
    }
  }
  
  var hp: Int {
    get {
      return _hp
    }
  }
  
  var isAlive: Bool {
    get {
      if hp <= 0 {
        return false
      } else {
        return true
      }
    }
  }
  
  init(startingHp: Int, attackPwr: Int) {
    self._hp = startingHp
    self._attackPwr = attackPwr
  }
  
  func attemptAttack(attackPwr: Int) -> Bool {
    self._hp -= attackPwr
    return true
  }
  
}
