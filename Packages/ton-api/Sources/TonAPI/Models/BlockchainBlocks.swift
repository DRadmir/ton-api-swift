//
// BlockchainBlocks.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockchainBlocks: Codable, JSONEncodable, Hashable {

    public var blocks: [BlockchainBlock]

    public init(blocks: [BlockchainBlock]) {
        self.blocks = blocks
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case blocks
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(blocks, forKey: .blocks)
    }
}

