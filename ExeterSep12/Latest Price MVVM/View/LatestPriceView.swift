//
//  LatestPriceView.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

struct LatestPriceView: View {
  
  @StateObject var viewModel = PriceViewModelImplementation(service: NetworkingServiceImplementation())
  var body: some View {
    VStack {
      Text("Latest price")
      Text(viewModel.rateAndCurrency.rate)
      
    }
    .task {
      await viewModel.getLatestPrice()
    }
 
  }
}

struct LatestPriceView_Previews: PreviewProvider {
  static var previews: some View {
    LatestPriceView()
  }
}
