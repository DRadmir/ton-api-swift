//
// EcPreview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EcPreview: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var symbol: String
    public var decimals: Int
    public var image: String

    public init(id: Int, symbol: String, decimals: Int, image: String) {
        self.id = id
        self.symbol = symbol
        self.decimals = decimals
        self.image = image
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case symbol
        case decimals
        case image
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(symbol, forKey: .symbol)
        try container.encode(decimals, forKey: .decimals)
        try container.encode(image, forKey: .image)
    }
}
