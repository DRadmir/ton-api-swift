//
// BlockchainConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BlockchainConfig: Codable, JSONEncodable, Hashable {

    /** config boc in hex format */
    public var raw: String
    /** config address */
    public var _0: String
    /** elector address */
    public var _1: String
    /** minter address */
    public var _2: String
    /** The address of the transaction fee collector. */
    public var _3: String?
    /** dns root address */
    public var _4: String
    public var _5: BlockchainConfig5?
    public var _6: BlockchainConfig6?
    public var _7: BlockchainConfig7?
    public var _8: BlockchainConfig8?
    public var _9: BlockchainConfig9?
    public var _10: BlockchainConfig10?
    public var _11: BlockchainConfig11?
    public var _12: BlockchainConfig12?
    public var _13: BlockchainConfig13?
    public var _14: BlockchainConfig14?
    public var _15: BlockchainConfig15?
    public var _16: BlockchainConfig16?
    public var _17: BlockchainConfig17?
    public var _18: BlockchainConfig18?
    public var _20: BlockchainConfig20?
    public var _21: BlockchainConfig21?
    public var _22: BlockchainConfig22?
    public var _23: BlockchainConfig23?
    public var _24: BlockchainConfig24?
    public var _25: BlockchainConfig25?
    public var _28: BlockchainConfig28?
    public var _29: BlockchainConfig29?
    public var _31: BlockchainConfig31?
    public var _32: ValidatorsSet?
    public var _33: ValidatorsSet?
    public var _34: ValidatorsSet?
    public var _35: ValidatorsSet?
    public var _36: ValidatorsSet?
    public var _37: ValidatorsSet?
    public var _40: BlockchainConfig40?
    public var _43: BlockchainConfig43?
    public var _44: BlockchainConfig44
    public var _45: BlockchainConfig45?
    public var _71: BlockchainConfig71?
    public var _72: BlockchainConfig71?
    public var _73: BlockchainConfig71?
    public var _79: BlockchainConfig79?
    public var _81: BlockchainConfig79?
    public var _82: BlockchainConfig79?

    public init(raw: String, _0: String, _1: String, _2: String, _3: String? = nil, _4: String, _5: BlockchainConfig5? = nil, _6: BlockchainConfig6? = nil, _7: BlockchainConfig7? = nil, _8: BlockchainConfig8? = nil, _9: BlockchainConfig9? = nil, _10: BlockchainConfig10? = nil, _11: BlockchainConfig11? = nil, _12: BlockchainConfig12? = nil, _13: BlockchainConfig13? = nil, _14: BlockchainConfig14? = nil, _15: BlockchainConfig15? = nil, _16: BlockchainConfig16? = nil, _17: BlockchainConfig17? = nil, _18: BlockchainConfig18? = nil, _20: BlockchainConfig20? = nil, _21: BlockchainConfig21? = nil, _22: BlockchainConfig22? = nil, _23: BlockchainConfig23? = nil, _24: BlockchainConfig24? = nil, _25: BlockchainConfig25? = nil, _28: BlockchainConfig28? = nil, _29: BlockchainConfig29? = nil, _31: BlockchainConfig31? = nil, _32: ValidatorsSet? = nil, _33: ValidatorsSet? = nil, _34: ValidatorsSet? = nil, _35: ValidatorsSet? = nil, _36: ValidatorsSet? = nil, _37: ValidatorsSet? = nil, _40: BlockchainConfig40? = nil, _43: BlockchainConfig43? = nil, _44: BlockchainConfig44, _45: BlockchainConfig45? = nil, _71: BlockchainConfig71? = nil, _72: BlockchainConfig71? = nil, _73: BlockchainConfig71? = nil, _79: BlockchainConfig79? = nil, _81: BlockchainConfig79? = nil, _82: BlockchainConfig79? = nil) {
        self.raw = raw
        self._0 = _0
        self._1 = _1
        self._2 = _2
        self._3 = _3
        self._4 = _4
        self._5 = _5
        self._6 = _6
        self._7 = _7
        self._8 = _8
        self._9 = _9
        self._10 = _10
        self._11 = _11
        self._12 = _12
        self._13 = _13
        self._14 = _14
        self._15 = _15
        self._16 = _16
        self._17 = _17
        self._18 = _18
        self._20 = _20
        self._21 = _21
        self._22 = _22
        self._23 = _23
        self._24 = _24
        self._25 = _25
        self._28 = _28
        self._29 = _29
        self._31 = _31
        self._32 = _32
        self._33 = _33
        self._34 = _34
        self._35 = _35
        self._36 = _36
        self._37 = _37
        self._40 = _40
        self._43 = _43
        self._44 = _44
        self._45 = _45
        self._71 = _71
        self._72 = _72
        self._73 = _73
        self._79 = _79
        self._81 = _81
        self._82 = _82
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case raw
        case _0 = "0"
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
        case _4 = "4"
        case _5 = "5"
        case _6 = "6"
        case _7 = "7"
        case _8 = "8"
        case _9 = "9"
        case _10 = "10"
        case _11 = "11"
        case _12 = "12"
        case _13 = "13"
        case _14 = "14"
        case _15 = "15"
        case _16 = "16"
        case _17 = "17"
        case _18 = "18"
        case _20 = "20"
        case _21 = "21"
        case _22 = "22"
        case _23 = "23"
        case _24 = "24"
        case _25 = "25"
        case _28 = "28"
        case _29 = "29"
        case _31 = "31"
        case _32 = "32"
        case _33 = "33"
        case _34 = "34"
        case _35 = "35"
        case _36 = "36"
        case _37 = "37"
        case _40 = "40"
        case _43 = "43"
        case _44 = "44"
        case _45 = "45"
        case _71 = "71"
        case _72 = "72"
        case _73 = "73"
        case _79 = "79"
        case _81 = "81"
        case _82 = "82"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(raw, forKey: .raw)
        try container.encode(_0, forKey: ._0)
        try container.encode(_1, forKey: ._1)
        try container.encode(_2, forKey: ._2)
        try container.encodeIfPresent(_3, forKey: ._3)
        try container.encode(_4, forKey: ._4)
        try container.encodeIfPresent(_5, forKey: ._5)
        try container.encodeIfPresent(_6, forKey: ._6)
        try container.encodeIfPresent(_7, forKey: ._7)
        try container.encodeIfPresent(_8, forKey: ._8)
        try container.encodeIfPresent(_9, forKey: ._9)
        try container.encodeIfPresent(_10, forKey: ._10)
        try container.encodeIfPresent(_11, forKey: ._11)
        try container.encodeIfPresent(_12, forKey: ._12)
        try container.encodeIfPresent(_13, forKey: ._13)
        try container.encodeIfPresent(_14, forKey: ._14)
        try container.encodeIfPresent(_15, forKey: ._15)
        try container.encodeIfPresent(_16, forKey: ._16)
        try container.encodeIfPresent(_17, forKey: ._17)
        try container.encodeIfPresent(_18, forKey: ._18)
        try container.encodeIfPresent(_20, forKey: ._20)
        try container.encodeIfPresent(_21, forKey: ._21)
        try container.encodeIfPresent(_22, forKey: ._22)
        try container.encodeIfPresent(_23, forKey: ._23)
        try container.encodeIfPresent(_24, forKey: ._24)
        try container.encodeIfPresent(_25, forKey: ._25)
        try container.encodeIfPresent(_28, forKey: ._28)
        try container.encodeIfPresent(_29, forKey: ._29)
        try container.encodeIfPresent(_31, forKey: ._31)
        try container.encodeIfPresent(_32, forKey: ._32)
        try container.encodeIfPresent(_33, forKey: ._33)
        try container.encodeIfPresent(_34, forKey: ._34)
        try container.encodeIfPresent(_35, forKey: ._35)
        try container.encodeIfPresent(_36, forKey: ._36)
        try container.encodeIfPresent(_37, forKey: ._37)
        try container.encodeIfPresent(_40, forKey: ._40)
        try container.encodeIfPresent(_43, forKey: ._43)
        try container.encode(_44, forKey: ._44)
        try container.encodeIfPresent(_45, forKey: ._45)
        try container.encodeIfPresent(_71, forKey: ._71)
        try container.encodeIfPresent(_72, forKey: ._72)
        try container.encodeIfPresent(_73, forKey: ._73)
        try container.encodeIfPresent(_79, forKey: ._79)
        try container.encodeIfPresent(_81, forKey: ._81)
        try container.encodeIfPresent(_82, forKey: ._82)
    }
}

