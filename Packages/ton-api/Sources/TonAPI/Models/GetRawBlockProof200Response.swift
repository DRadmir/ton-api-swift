//
// GetRawBlockProof200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRawBlockProof200Response: Codable, JSONEncodable, Hashable {

    public var complete: Bool
    public var from: BlockRaw
    public var to: BlockRaw
    public var steps: [GetRawBlockProof200ResponseStepsInner]

    public init(complete: Bool, from: BlockRaw, to: BlockRaw, steps: [GetRawBlockProof200ResponseStepsInner]) {
        self.complete = complete
        self.from = from
        self.to = to
        self.steps = steps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case complete
        case from
        case to
        case steps
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(complete, forKey: .complete)
        try container.encode(from, forKey: .from)
        try container.encode(to, forKey: .to)
        try container.encode(steps, forKey: .steps)
    }
}

