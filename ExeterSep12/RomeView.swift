//
//  RomeView.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

struct RomeView: View {
  @State var color = Color("RomanRed")
  var body: some View {
    ZStack {
      color
        .edgesIgnoringSafeArea(.all)
      VStack {
        Image("Rome")
          .resizable()
        .scaledToFit()
        ColorPicker("color", selection: $color)
      }
      Text("hello Exeter")
        .foregroundColor(.white)
        .font(.title)
    }
    .edgesIgnoringSafeArea(.all)
  }
}

struct RomeView_Previews: PreviewProvider {
  static var previews: some View {
    RomeView()
  }
}
