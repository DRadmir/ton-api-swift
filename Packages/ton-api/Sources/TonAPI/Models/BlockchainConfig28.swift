//
// BlockchainConfig28.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The configuration for the Catchain protocol. */
public struct BlockchainConfig28: Codable, JSONEncodable, Hashable {

    public var mcCatchainLifetime: Int64
    public var shardCatchainLifetime: Int64
    public var shardValidatorsLifetime: Int64
    public var shardValidatorsNum: Int64
    public var flags: Int?
    public var shuffleMcValidators: Bool?

    public init(mcCatchainLifetime: Int64, shardCatchainLifetime: Int64, shardValidatorsLifetime: Int64, shardValidatorsNum: Int64, flags: Int? = nil, shuffleMcValidators: Bool? = nil) {
        self.mcCatchainLifetime = mcCatchainLifetime
        self.shardCatchainLifetime = shardCatchainLifetime
        self.shardValidatorsLifetime = shardValidatorsLifetime
        self.shardValidatorsNum = shardValidatorsNum
        self.flags = flags
        self.shuffleMcValidators = shuffleMcValidators
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mcCatchainLifetime = "mc_catchain_lifetime"
        case shardCatchainLifetime = "shard_catchain_lifetime"
        case shardValidatorsLifetime = "shard_validators_lifetime"
        case shardValidatorsNum = "shard_validators_num"
        case flags
        case shuffleMcValidators = "shuffle_mc_validators"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mcCatchainLifetime, forKey: .mcCatchainLifetime)
        try container.encode(shardCatchainLifetime, forKey: .shardCatchainLifetime)
        try container.encode(shardValidatorsLifetime, forKey: .shardValidatorsLifetime)
        try container.encode(shardValidatorsNum, forKey: .shardValidatorsNum)
        try container.encodeIfPresent(flags, forKey: .flags)
        try container.encodeIfPresent(shuffleMcValidators, forKey: .shuffleMcValidators)
    }
}
