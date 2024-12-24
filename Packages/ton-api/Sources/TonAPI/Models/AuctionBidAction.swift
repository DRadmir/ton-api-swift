//
// AuctionBidAction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuctionBidAction: Codable, JSONEncodable, Hashable {

    public enum AuctionType: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case dnsPeriodTon = "DNS.ton"
        case dnsPeriodTg = "DNS.tg"
        case numberPeriodTg = "NUMBER.tg"
        case getgems = "getgems"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var auctionType: AuctionType
    public var amount: Price
    public var nft: NftItem?
    public var bidder: AccountAddress
    public var auction: AccountAddress

    public init(auctionType: AuctionType, amount: Price, nft: NftItem? = nil, bidder: AccountAddress, auction: AccountAddress) {
        self.auctionType = auctionType
        self.amount = amount
        self.nft = nft
        self.bidder = bidder
        self.auction = auction
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case auctionType = "auction_type"
        case amount
        case nft
        case bidder
        case auction
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(auctionType, forKey: .auctionType)
        try container.encode(amount, forKey: .amount)
        try container.encodeIfPresent(nft, forKey: .nft)
        try container.encode(bidder, forKey: .bidder)
        try container.encode(auction, forKey: .auction)
    }
}
