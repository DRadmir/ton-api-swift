//
// EncryptedComment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EncryptedComment: Codable, JSONEncodable, Hashable {

    public var encryptionType: String
    public var cipherText: String

    public init(encryptionType: String, cipherText: String) {
        self.encryptionType = encryptionType
        self.cipherText = cipherText
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case encryptionType = "encryption_type"
        case cipherText = "cipher_text"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(encryptionType, forKey: .encryptionType)
        try container.encode(cipherText, forKey: .cipherText)
    }
}

