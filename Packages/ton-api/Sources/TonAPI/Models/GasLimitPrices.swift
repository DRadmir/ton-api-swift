//
// GasLimitPrices.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GasLimitPrices: Codable, JSONEncodable, Hashable {

    public var specialGasLimit: Int64?
    public var flatGasLimit: Int64?
    public var flatGasPrice: Int64?
    public var gasPrice: Int64
    public var gasLimit: Int64
    public var gasCredit: Int64
    public var blockGasLimit: Int64
    public var freezeDueLimit: Int64
    public var deleteDueLimit: Int64

    public init(specialGasLimit: Int64? = nil, flatGasLimit: Int64? = nil, flatGasPrice: Int64? = nil, gasPrice: Int64, gasLimit: Int64, gasCredit: Int64, blockGasLimit: Int64, freezeDueLimit: Int64, deleteDueLimit: Int64) {
        self.specialGasLimit = specialGasLimit
        self.flatGasLimit = flatGasLimit
        self.flatGasPrice = flatGasPrice
        self.gasPrice = gasPrice
        self.gasLimit = gasLimit
        self.gasCredit = gasCredit
        self.blockGasLimit = blockGasLimit
        self.freezeDueLimit = freezeDueLimit
        self.deleteDueLimit = deleteDueLimit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case specialGasLimit = "special_gas_limit"
        case flatGasLimit = "flat_gas_limit"
        case flatGasPrice = "flat_gas_price"
        case gasPrice = "gas_price"
        case gasLimit = "gas_limit"
        case gasCredit = "gas_credit"
        case blockGasLimit = "block_gas_limit"
        case freezeDueLimit = "freeze_due_limit"
        case deleteDueLimit = "delete_due_limit"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(specialGasLimit, forKey: .specialGasLimit)
        try container.encodeIfPresent(flatGasLimit, forKey: .flatGasLimit)
        try container.encodeIfPresent(flatGasPrice, forKey: .flatGasPrice)
        try container.encode(gasPrice, forKey: .gasPrice)
        try container.encode(gasLimit, forKey: .gasLimit)
        try container.encode(gasCredit, forKey: .gasCredit)
        try container.encode(blockGasLimit, forKey: .blockGasLimit)
        try container.encode(freezeDueLimit, forKey: .freezeDueLimit)
        try container.encode(deleteDueLimit, forKey: .deleteDueLimit)
    }
}
