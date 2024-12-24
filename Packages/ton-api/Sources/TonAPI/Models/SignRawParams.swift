//
// SignRawParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SignRawParams: Codable, JSONEncodable, Hashable {

    public var relayAddress: String
    /** Commission for the transaction. In nanocoins. */
    public var commission: String
    public var from: String
    public var validUntil: Int64
    public var messages: [SignRawMessage]

    public init(relayAddress: String, commission: String, from: String, validUntil: Int64, messages: [SignRawMessage]) {
        self.relayAddress = relayAddress
        self.commission = commission
        self.from = from
        self.validUntil = validUntil
        self.messages = messages
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case relayAddress = "relay_address"
        case commission
        case from
        case validUntil = "valid_until"
        case messages
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(relayAddress, forKey: .relayAddress)
        try container.encode(commission, forKey: .commission)
        try container.encode(from, forKey: .from)
        try container.encode(validUntil, forKey: .validUntil)
        try container.encode(messages, forKey: .messages)
    }
}
