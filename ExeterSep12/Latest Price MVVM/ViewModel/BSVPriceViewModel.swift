//
//  BSVPriceViewModel.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

protocol PriceViewModel: ObservableObject {
  func getLatestPrice() async
}

@MainActor
final class PriceViewModelImplementation: PriceViewModel {
  @Published var rateAndCurrency: LatestBSVPriceModel = LatestBSVPriceModel.default
  
  private let service: NetworkingService
  private let url = URL(string: "https://api.whatsonchain.com/v1/bsv/main/exchangerate")!
  
  init(service: NetworkingService) {
    self.service = service
  }
  func getLatestPrice() async {
    do {
      rateAndCurrency = try await service.fetch(url, defaultValue: LatestBSVPriceModel.default)
    } catch {
      print(error)
    }
  }
}
