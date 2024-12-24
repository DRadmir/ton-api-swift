//
// DnsRecord.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DnsRecord: Codable, JSONEncodable, Hashable {

    public var wallet: WalletDNS?
    public var nextResolver: String?
    public var sites: [String]
    /** tonstorage bag id */
    public var storage: String?

    public init(wallet: WalletDNS? = nil, nextResolver: String? = nil, sites: [String], storage: String? = nil) {
        self.wallet = wallet
        self.nextResolver = nextResolver
        self.sites = sites
        self.storage = storage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case wallet
        case nextResolver = "next_resolver"
        case sites
        case storage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(wallet, forKey: .wallet)
        try container.encodeIfPresent(nextResolver, forKey: .nextResolver)
        try container.encode(sites, forKey: .sites)
        try container.encodeIfPresent(storage, forKey: .storage)
    }
}

