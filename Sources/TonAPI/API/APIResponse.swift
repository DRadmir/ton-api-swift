//
//  File.swift
//  
//
//  Created by Grigory on 17.6.23..
//

import Foundation

public struct APIResponse<Entity: Decodable> {
  let response: Response
  let entity: Entity
}
