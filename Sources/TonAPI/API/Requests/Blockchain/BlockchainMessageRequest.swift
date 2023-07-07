//
//  BlockchainMessageRequest.swift
//  
//
//  Created by Grigory on 7.7.23..
//

import Foundation

public struct EmptyResponse: Codable {}

public struct BlockchainMessageRequest: APIRequestAttributed {
  public typealias Entity = EmptyResponse
  var path: String {
      Paths.v2.blockchain.message.path
  }
  
  var httpMethod: HTTPMethod {
    .POST
  }
  
  var bodyParameters: HTTPParameters {
    [.boc: boc]
  }
  
  public let boc: String
  
  public init(boc: String) {
    self.boc = boc
  }
}
