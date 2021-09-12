//
//  CounterViewModel.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

class CounterViewModel: ObservableObject {
  @Published var numberOfSatoshis: Int = 0
  
  func add() {
    numberOfSatoshis += 1
  }
  
  func minus() {
    numberOfSatoshis -= 1
  }
}
