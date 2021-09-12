//
//  CounterView.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

struct CounterView: View {
  @StateObject var viewModel = CounterViewModel()
  var body: some View {
    ZStack {
      VStack {
        Text("number of satoshis")
        
        Text("\(viewModel.numberOfSatoshis)")
          .font(.title)
          .bold()
        
        HStack {
          Button(action: {
            viewModel.minus()
          }, label: {
            TabItemView(imageSystemName: "minus.circle.fill", iconLabel: "minus")
          })
          
          Spacer()
          
          Button(action: {
            viewModel.add()
          }, label: {
            TabItemView(imageSystemName: "plus.circle.fill", iconLabel: "add")
          })
        }
        .padding()
      }
    }
  }
}

struct CounterView_Previews: PreviewProvider {
  static var previews: some View {
    CounterView()
  }
}
