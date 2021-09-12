//
//  ContentView.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      RomeView()
        .tag(0)
        .tabItem {
          TabItemView(imageSystemName: "house", iconLabel: "home")
        }
      
      Stacks()
        .tag(1)
        .tabItem {
          TabItemView(imageSystemName: "rectangle.stack", iconLabel: "stacks")
        }
      
      CounterView()
        .tag(2)
        .tabItem {
          TabItemView(imageSystemName: "gauge.badge.plus", iconLabel: "counter")
        }
      
      LatestPriceView()
        .tag(3)
        .tabItem {
          TabItemView(imageSystemName: "bitcoinsign.circle.fill", iconLabel: "price")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
