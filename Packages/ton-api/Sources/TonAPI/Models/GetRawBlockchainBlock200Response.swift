//
// GetRawBlockchainBlock200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRawBlockchainBlock200Response: Codable, JSONEncodable, Hashable {

    public var id: BlockRaw
    public var data: String

    public init(id: BlockRaw, data: String) {
        self.id = id
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(data, forKey: .data)
    }
}

