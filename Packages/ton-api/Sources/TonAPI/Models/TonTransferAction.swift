//
// TonTransferAction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TonTransferAction: Codable, JSONEncodable, Hashable {

    public var sender: AccountAddress
    public var recipient: AccountAddress
    /** amount in nanotons */
    public var amount: Int64
    public var comment: String?
    public var encryptedComment: EncryptedComment?
    public var refund: Refund?

    public init(sender: AccountAddress, recipient: AccountAddress, amount: Int64, comment: String? = nil, encryptedComment: EncryptedComment? = nil, refund: Refund? = nil) {
        self.sender = sender
        self.recipient = recipient
        self.amount = amount
        self.comment = comment
        self.encryptedComment = encryptedComment
        self.refund = refund
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sender
        case recipient
        case amount
        case comment
        case encryptedComment = "encrypted_comment"
        case refund
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sender, forKey: .sender)
        try container.encode(recipient, forKey: .recipient)
        try container.encode(amount, forKey: .amount)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(encryptedComment, forKey: .encryptedComment)
        try container.encodeIfPresent(refund, forKey: .refund)
    }
}
