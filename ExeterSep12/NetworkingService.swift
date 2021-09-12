//
//  NetworkingService.swift
//  ExeterSep12
//
//  Created by Henry Hudson on 12/09/2021.
//

import SwiftUI

protocol NetworkingService {
  func fetch<T: Decodable>(_ url: URL, defaultValue: T) async throws -> T
}

final class NetworkingServiceImplementation: NetworkingService {
  func fetch<T: Decodable>(_ url: URL, defaultValue: T) async throws -> T {
    let urlSession = URLSession.shared
    let url = url
    let (data, _) = try await urlSession.data(from: url)
    
    return try JSONDecoder().decode(T.self, from: data)
  }
}
