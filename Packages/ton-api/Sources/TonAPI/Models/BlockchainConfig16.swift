//
// BlockchainConfig16.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The limits on the number of validators in the TON blockchain. */
public struct BlockchainConfig16: Codable, JSONEncodable, Hashable {

    public var maxValidators: Int
    public var maxMainValidators: Int
    public var minValidators: Int

    public init(maxValidators: Int, maxMainValidators: Int, minValidators: Int) {
        self.maxValidators = maxValidators
        self.maxMainValidators = maxMainValidators
        self.minValidators = minValidators
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxValidators = "max_validators"
        case maxMainValidators = "max_main_validators"
        case minValidators = "min_validators"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(maxValidators, forKey: .maxValidators)
        try container.encode(maxMainValidators, forKey: .maxMainValidators)
        try container.encode(minValidators, forKey: .minValidators)
    }
}
