//
//  Stacks.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

struct Stacks: View {
  var body: some View {
//    ZStack {
//      Color.black
//        .edgesIgnoringSafeArea(.all)
//
//      Rectangle()
//        .frame(width: 200, height: 200, alignment: .center)
//        .foregroundColor(.blue)
//
//      Rectangle()
//        .frame(width: 100, height: 100, alignment: .center)
//        .foregroundColor(.red)
    ZStack {
      ScrollView {
        VStack {
          ForEach(0..<5) { i in
            Circle()
              .foregroundColor(.red)
          }
        }
      }
        
    }
  }
}

struct Stacks_Previews: PreviewProvider {
  static var previews: some View {
    Stacks()
  }
}
