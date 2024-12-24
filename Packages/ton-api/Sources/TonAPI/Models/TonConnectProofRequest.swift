//
// TonConnectProofRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TonConnectProofRequest: Codable, JSONEncodable, Hashable {

    public var address: String
    public var proof: TonConnectProofRequestProof

    public init(address: String, proof: TonConnectProofRequestProof) {
        self.address = address
        self.proof = proof
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case proof
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(address, forKey: .address)
        try container.encode(proof, forKey: .proof)
    }
}
