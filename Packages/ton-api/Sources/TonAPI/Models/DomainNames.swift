//
// DomainNames.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DomainNames: Codable, JSONEncodable, Hashable {

    public var domains: [String]

    public init(domains: [String]) {
        self.domains = domains
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case domains
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(domains, forKey: .domains)
    }
}
