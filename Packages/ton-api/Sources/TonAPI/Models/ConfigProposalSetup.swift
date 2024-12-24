//
// ConfigProposalSetup.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConfigProposalSetup: Codable, JSONEncodable, Hashable {

    public var minTotRounds: Int
    public var maxTotRounds: Int
    public var minWins: Int
    public var maxLosses: Int
    public var minStoreSec: Int64
    public var maxStoreSec: Int64
    public var bitPrice: Int64
    public var cellPrice: Int64

    public init(minTotRounds: Int, maxTotRounds: Int, minWins: Int, maxLosses: Int, minStoreSec: Int64, maxStoreSec: Int64, bitPrice: Int64, cellPrice: Int64) {
        self.minTotRounds = minTotRounds
        self.maxTotRounds = maxTotRounds
        self.minWins = minWins
        self.maxLosses = maxLosses
        self.minStoreSec = minStoreSec
        self.maxStoreSec = maxStoreSec
        self.bitPrice = bitPrice
        self.cellPrice = cellPrice
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case minTotRounds = "min_tot_rounds"
        case maxTotRounds = "max_tot_rounds"
        case minWins = "min_wins"
        case maxLosses = "max_losses"
        case minStoreSec = "min_store_sec"
        case maxStoreSec = "max_store_sec"
        case bitPrice = "bit_price"
        case cellPrice = "cell_price"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(minTotRounds, forKey: .minTotRounds)
        try container.encode(maxTotRounds, forKey: .maxTotRounds)
        try container.encode(minWins, forKey: .minWins)
        try container.encode(maxLosses, forKey: .maxLosses)
        try container.encode(minStoreSec, forKey: .minStoreSec)
        try container.encode(maxStoreSec, forKey: .maxStoreSec)
        try container.encode(bitPrice, forKey: .bitPrice)
        try container.encode(cellPrice, forKey: .cellPrice)
    }
}
