//
// Auction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Auction: Codable, JSONEncodable, Hashable {

    public var domain: String
    public var owner: String
    public var price: Int64
    public var bids: Int64
    public var date: Int64

    public init(domain: String, owner: String, price: Int64, bids: Int64, date: Int64) {
        self.domain = domain
        self.owner = owner
        self.price = price
        self.bids = bids
        self.date = date
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domain
        case owner
        case price
        case bids
        case date
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(domain, forKey: .domain)
        try container.encode(owner, forKey: .owner)
        try container.encode(price, forKey: .price)
        try container.encode(bids, forKey: .bids)
        try container.encode(date, forKey: .date)
    }
}

