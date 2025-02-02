//
// NftCollection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NftCollection: Codable, JSONEncodable, Hashable {

    public enum ApprovedBy: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case getgems = "getgems"
        case tonkeeper = "tonkeeper"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var address: String
    public var nextItemIndex: Int64
    public var owner: AccountAddress?
    public var rawCollectionContent: String
    public var metadata: [String: AnyCodable]?
    public var previews: [ImagePreview]?
    public var approvedBy: [ApprovedBy]

    public init(address: String, nextItemIndex: Int64, owner: AccountAddress? = nil, rawCollectionContent: String, metadata: [String: AnyCodable]? = nil, previews: [ImagePreview]? = nil, approvedBy: [ApprovedBy]) {
        self.address = address
        self.nextItemIndex = nextItemIndex
        self.owner = owner
        self.rawCollectionContent = rawCollectionContent
        self.metadata = metadata
        self.previews = previews
        self.approvedBy = approvedBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case nextItemIndex = "next_item_index"
        case owner
        case rawCollectionContent = "raw_collection_content"
        case metadata
        case previews
        case approvedBy = "approved_by"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(nextItemIndex, forKey: .nextItemIndex)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encode(rawCollectionContent, forKey: .rawCollectionContent)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(previews, forKey: .previews)
        try container.encode(approvedBy, forKey: .approvedBy)
    }
}

