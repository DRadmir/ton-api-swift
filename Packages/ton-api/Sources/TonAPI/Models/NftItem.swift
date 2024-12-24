//
// NftItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NftItem: Codable, JSONEncodable, Hashable {

    public enum ApprovedBy: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case getgems = "getgems"
        case tonkeeper = "tonkeeper"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var address: String
    public var index: Int64
    public var owner: AccountAddress?
    public var collection: NftItemCollection?
    /** Collection master contract confirmed that this item is part of collection */
    public var verified: Bool
    public var metadata: [String: AnyCodable]
    public var sale: Sale?
    public var previews: [ImagePreview]?
    public var dns: String?
    public var approvedBy: [ApprovedBy]
    public var includeCnft: Bool?
    public var trust: TrustType

    public init(address: String, index: Int64, owner: AccountAddress? = nil, collection: NftItemCollection? = nil, verified: Bool, metadata: [String: AnyCodable], sale: Sale? = nil, previews: [ImagePreview]? = nil, dns: String? = nil, approvedBy: [ApprovedBy], includeCnft: Bool? = nil, trust: TrustType) {
        self.address = address
        self.index = index
        self.owner = owner
        self.collection = collection
        self.verified = verified
        self.metadata = metadata
        self.sale = sale
        self.previews = previews
        self.dns = dns
        self.approvedBy = approvedBy
        self.includeCnft = includeCnft
        self.trust = trust
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case index
        case owner
        case collection
        case verified
        case metadata
        case sale
        case previews
        case dns
        case approvedBy = "approved_by"
        case includeCnft = "include_cnft"
        case trust
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(index, forKey: .index)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(collection, forKey: .collection)
        try container.encode(verified, forKey: .verified)
        try container.encode(metadata, forKey: .metadata)
        try container.encodeIfPresent(sale, forKey: .sale)
        try container.encodeIfPresent(previews, forKey: .previews)
        try container.encodeIfPresent(dns, forKey: .dns)
        try container.encode(approvedBy, forKey: .approvedBy)
        try container.encodeIfPresent(includeCnft, forKey: .includeCnft)
        try container.encode(trust, forKey: .trust)
    }
}
