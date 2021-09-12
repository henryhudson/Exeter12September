//
//  LatestBSVPriceModel.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

struct LatestBSVPriceModel: Codable {
  let currency: String
  let rate: String
  
  static let `default` = LatestBSVPriceModel(currency: "usd", rate: "-1")
}
