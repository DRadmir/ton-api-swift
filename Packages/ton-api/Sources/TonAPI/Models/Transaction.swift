//
// Transaction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Transaction: Codable, JSONEncodable, Hashable {

    public var hash: String
    public var lt: Int64
    public var account: AccountAddress
    public var success: Bool
    public var utime: Int64
    public var origStatus: AccountStatus
    public var endStatus: AccountStatus
    public var totalFees: Int64
    public var endBalance: Int64
    public var transactionType: TransactionType
    public var stateUpdateOld: String
    public var stateUpdateNew: String
    public var inMsg: Message?
    public var outMsgs: [Message]
    public var block: String
    public var prevTransHash: String?
    public var prevTransLt: Int64?
    public var computePhase: ComputePhase?
    public var storagePhase: StoragePhase?
    public var creditPhase: CreditPhase?
    public var actionPhase: ActionPhase?
    public var bouncePhase: BouncePhaseType?
    public var aborted: Bool
    public var destroyed: Bool
    /** hex encoded boc with raw transaction */
    public var raw: String

    public init(hash: String, lt: Int64, account: AccountAddress, success: Bool, utime: Int64, origStatus: AccountStatus, endStatus: AccountStatus, totalFees: Int64, endBalance: Int64, transactionType: TransactionType, stateUpdateOld: String, stateUpdateNew: String, inMsg: Message? = nil, outMsgs: [Message], block: String, prevTransHash: String? = nil, prevTransLt: Int64? = nil, computePhase: ComputePhase? = nil, storagePhase: StoragePhase? = nil, creditPhase: CreditPhase? = nil, actionPhase: ActionPhase? = nil, bouncePhase: BouncePhaseType? = nil, aborted: Bool, destroyed: Bool, raw: String) {
        self.hash = hash
        self.lt = lt
        self.account = account
        self.success = success
        self.utime = utime
        self.origStatus = origStatus
        self.endStatus = endStatus
        self.totalFees = totalFees
        self.endBalance = endBalance
        self.transactionType = transactionType
        self.stateUpdateOld = stateUpdateOld
        self.stateUpdateNew = stateUpdateNew
        self.inMsg = inMsg
        self.outMsgs = outMsgs
        self.block = block
        self.prevTransHash = prevTransHash
        self.prevTransLt = prevTransLt
        self.computePhase = computePhase
        self.storagePhase = storagePhase
        self.creditPhase = creditPhase
        self.actionPhase = actionPhase
        self.bouncePhase = bouncePhase
        self.aborted = aborted
        self.destroyed = destroyed
        self.raw = raw
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hash
        case lt
        case account
        case success
        case utime
        case origStatus = "orig_status"
        case endStatus = "end_status"
        case totalFees = "total_fees"
        case endBalance = "end_balance"
        case transactionType = "transaction_type"
        case stateUpdateOld = "state_update_old"
        case stateUpdateNew = "state_update_new"
        case inMsg = "in_msg"
        case outMsgs = "out_msgs"
        case block
        case prevTransHash = "prev_trans_hash"
        case prevTransLt = "prev_trans_lt"
        case computePhase = "compute_phase"
        case storagePhase = "storage_phase"
        case creditPhase = "credit_phase"
        case actionPhase = "action_phase"
        case bouncePhase = "bounce_phase"
        case aborted
        case destroyed
        case raw
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hash, forKey: .hash)
        try container.encode(lt, forKey: .lt)
        try container.encode(account, forKey: .account)
        try container.encode(success, forKey: .success)
        try container.encode(utime, forKey: .utime)
        try container.encode(origStatus, forKey: .origStatus)
        try container.encode(endStatus, forKey: .endStatus)
        try container.encode(totalFees, forKey: .totalFees)
        try container.encode(endBalance, forKey: .endBalance)
        try container.encode(transactionType, forKey: .transactionType)
        try container.encode(stateUpdateOld, forKey: .stateUpdateOld)
        try container.encode(stateUpdateNew, forKey: .stateUpdateNew)
        try container.encodeIfPresent(inMsg, forKey: .inMsg)
        try container.encode(outMsgs, forKey: .outMsgs)
        try container.encode(block, forKey: .block)
        try container.encodeIfPresent(prevTransHash, forKey: .prevTransHash)
        try container.encodeIfPresent(prevTransLt, forKey: .prevTransLt)
        try container.encodeIfPresent(computePhase, forKey: .computePhase)
        try container.encodeIfPresent(storagePhase, forKey: .storagePhase)
        try container.encodeIfPresent(creditPhase, forKey: .creditPhase)
        try container.encodeIfPresent(actionPhase, forKey: .actionPhase)
        try container.encodeIfPresent(bouncePhase, forKey: .bouncePhase)
        try container.encode(aborted, forKey: .aborted)
        try container.encode(destroyed, forKey: .destroyed)
        try container.encode(raw, forKey: .raw)
    }
}
