//
//  TabItemView.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

struct TabItemView: View {
  let imageSystemName: String
  let iconLabel: String
  
  var body: some View {
    VStack {
      Image(systemName: imageSystemName)
        .font(.title2)
      
      Text(iconLabel)
    }
  }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
      TabItemView(imageSystemName: "house",
                  iconLabel: "home")
    }
}
