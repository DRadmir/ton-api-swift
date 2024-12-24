//
// DecodedRawMessage.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DecodedRawMessage: Codable, JSONEncodable, Hashable {

    public var message: DecodedRawMessageMessage
    public var mode: Int

    public init(message: DecodedRawMessageMessage, mode: Int) {
        self.message = message
        self.mode = mode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case mode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
        try container.encode(mode, forKey: .mode)
    }
}
