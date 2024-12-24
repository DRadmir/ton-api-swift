//
// BlockchainBlock.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockchainBlock: Codable, JSONEncodable, Hashable {

    public var txQuantity: Int
    public var valueFlow: BlockValueFlow
    public var workchainId: Int
    public var shard: String
    public var seqno: Int
    public var rootHash: String
    public var fileHash: String
    public var globalId: Int
    public var version: Int
    public var afterMerge: Bool
    public var beforeSplit: Bool
    public var afterSplit: Bool
    public var wantSplit: Bool
    public var wantMerge: Bool
    public var keyBlock: Bool
    public var genUtime: Int64
    public var startLt: Int64
    public var endLt: Int64
    public var vertSeqno: Int
    public var genCatchainSeqno: Int
    public var minRefMcSeqno: Int
    public var prevKeyBlockSeqno: Int
    public var genSoftwareVersion: Int?
    public var genSoftwareCapabilities: Int64?
    public var masterRef: String?
    public var prevRefs: [String]
    public var inMsgDescrLength: Int64
    public var outMsgDescrLength: Int64
    public var randSeed: String
    public var createdBy: String

    public init(txQuantity: Int, valueFlow: BlockValueFlow, workchainId: Int, shard: String, seqno: Int, rootHash: String, fileHash: String, globalId: Int, version: Int, afterMerge: Bool, beforeSplit: Bool, afterSplit: Bool, wantSplit: Bool, wantMerge: Bool, keyBlock: Bool, genUtime: Int64, startLt: Int64, endLt: Int64, vertSeqno: Int, genCatchainSeqno: Int, minRefMcSeqno: Int, prevKeyBlockSeqno: Int, genSoftwareVersion: Int? = nil, genSoftwareCapabilities: Int64? = nil, masterRef: String? = nil, prevRefs: [String], inMsgDescrLength: Int64, outMsgDescrLength: Int64, randSeed: String, createdBy: String) {
        self.txQuantity = txQuantity
        self.valueFlow = valueFlow
        self.workchainId = workchainId
        self.shard = shard
        self.seqno = seqno
        self.rootHash = rootHash
        self.fileHash = fileHash
        self.globalId = globalId
        self.version = version
        self.afterMerge = afterMerge
        self.beforeSplit = beforeSplit
        self.afterSplit = afterSplit
        self.wantSplit = wantSplit
        self.wantMerge = wantMerge
        self.keyBlock = keyBlock
        self.genUtime = genUtime
        self.startLt = startLt
        self.endLt = endLt
        self.vertSeqno = vertSeqno
        self.genCatchainSeqno = genCatchainSeqno
        self.minRefMcSeqno = minRefMcSeqno
        self.prevKeyBlockSeqno = prevKeyBlockSeqno
        self.genSoftwareVersion = genSoftwareVersion
        self.genSoftwareCapabilities = genSoftwareCapabilities
        self.masterRef = masterRef
        self.prevRefs = prevRefs
        self.inMsgDescrLength = inMsgDescrLength
        self.outMsgDescrLength = outMsgDescrLength
        self.randSeed = randSeed
        self.createdBy = createdBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case txQuantity = "tx_quantity"
        case valueFlow = "value_flow"
        case workchainId = "workchain_id"
        case shard
        case seqno
        case rootHash = "root_hash"
        case fileHash = "file_hash"
        case globalId = "global_id"
        case version
        case afterMerge = "after_merge"
        case beforeSplit = "before_split"
        case afterSplit = "after_split"
        case wantSplit = "want_split"
        case wantMerge = "want_merge"
        case keyBlock = "key_block"
        case genUtime = "gen_utime"
        case startLt = "start_lt"
        case endLt = "end_lt"
        case vertSeqno = "vert_seqno"
        case genCatchainSeqno = "gen_catchain_seqno"
        case minRefMcSeqno = "min_ref_mc_seqno"
        case prevKeyBlockSeqno = "prev_key_block_seqno"
        case genSoftwareVersion = "gen_software_version"
        case genSoftwareCapabilities = "gen_software_capabilities"
        case masterRef = "master_ref"
        case prevRefs = "prev_refs"
        case inMsgDescrLength = "in_msg_descr_length"
        case outMsgDescrLength = "out_msg_descr_length"
        case randSeed = "rand_seed"
        case createdBy = "created_by"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(txQuantity, forKey: .txQuantity)
        try container.encode(valueFlow, forKey: .valueFlow)
        try container.encode(workchainId, forKey: .workchainId)
        try container.encode(shard, forKey: .shard)
        try container.encode(seqno, forKey: .seqno)
        try container.encode(rootHash, forKey: .rootHash)
        try container.encode(fileHash, forKey: .fileHash)
        try container.encode(globalId, forKey: .globalId)
        try container.encode(version, forKey: .version)
        try container.encode(afterMerge, forKey: .afterMerge)
        try container.encode(beforeSplit, forKey: .beforeSplit)
        try container.encode(afterSplit, forKey: .afterSplit)
        try container.encode(wantSplit, forKey: .wantSplit)
        try container.encode(wantMerge, forKey: .wantMerge)
        try container.encode(keyBlock, forKey: .keyBlock)
        try container.encode(genUtime, forKey: .genUtime)
        try container.encode(startLt, forKey: .startLt)
        try container.encode(endLt, forKey: .endLt)
        try container.encode(vertSeqno, forKey: .vertSeqno)
        try container.encode(genCatchainSeqno, forKey: .genCatchainSeqno)
        try container.encode(minRefMcSeqno, forKey: .minRefMcSeqno)
        try container.encode(prevKeyBlockSeqno, forKey: .prevKeyBlockSeqno)
        try container.encodeIfPresent(genSoftwareVersion, forKey: .genSoftwareVersion)
        try container.encodeIfPresent(genSoftwareCapabilities, forKey: .genSoftwareCapabilities)
        try container.encodeIfPresent(masterRef, forKey: .masterRef)
        try container.encode(prevRefs, forKey: .prevRefs)
        try container.encode(inMsgDescrLength, forKey: .inMsgDescrLength)
        try container.encode(outMsgDescrLength, forKey: .outMsgDescrLength)
        try container.encode(randSeed, forKey: .randSeed)
        try container.encode(createdBy, forKey: .createdBy)
    }
}
