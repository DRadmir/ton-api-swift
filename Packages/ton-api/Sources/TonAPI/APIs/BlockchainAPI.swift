//
// BlockchainAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BlockchainAPI {

    /**

     - parameter accountId: (path) account ID 
     - returns: BlockchainAccountInspect
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func blockchainAccountInspect(accountId: String) async throws -> BlockchainAccountInspect {
        return try await blockchainAccountInspectWithRequestBuilder(accountId: accountId).execute().body
    }

    /**
     - GET /v2/blockchain/accounts/{account_id}/inspect
     - Blockchain account inspect
     - parameter accountId: (path) account ID 
     - returns: RequestBuilder<BlockchainAccountInspect> 
     */
    open class func blockchainAccountInspectWithRequestBuilder(accountId: String) -> RequestBuilder<BlockchainAccountInspect> {
        var localVariablePath = "/v2/blockchain/accounts/{account_id}/inspect"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BlockchainAccountInspect>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accountId: (path) account ID 
     - parameter methodName: (path) contract get method name 
     - parameter args: (query)  (optional)
     - parameter fixOrder: (query)  (optional, default to true)
     - returns: MethodExecutionResult
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func execGetMethodForBlockchainAccount(accountId: String, methodName: String, args: [String]? = nil, fixOrder: Bool? = nil) async throws -> MethodExecutionResult {
        return try await execGetMethodForBlockchainAccountWithRequestBuilder(accountId: accountId, methodName: methodName, args: args, fixOrder: fixOrder).execute().body
    }

    /**
     - GET /v2/blockchain/accounts/{account_id}/methods/{method_name}
     - Execute get method for account
     - parameter accountId: (path) account ID 
     - parameter methodName: (path) contract get method name 
     - parameter args: (query)  (optional)
     - parameter fixOrder: (query)  (optional, default to true)
     - returns: RequestBuilder<MethodExecutionResult> 
     */
    open class func execGetMethodForBlockchainAccountWithRequestBuilder(accountId: String, methodName: String, args: [String]? = nil, fixOrder: Bool? = nil) -> RequestBuilder<MethodExecutionResult> {
        var localVariablePath = "/v2/blockchain/accounts/{account_id}/methods/{method_name}"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let methodNamePreEscape = "\(APIHelper.mapValueToPathItem(methodName))"
        let methodNamePostEscape = methodNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{method_name}", with: methodNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "args": (wrappedValue: args?.encodeToJSON(), isExplode: true),
            "fix_order": (wrappedValue: fixOrder?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MethodExecutionResult>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     * enum for parameter sortOrder
     */
    public enum SortOrder_getBlockchainAccountTransactions: String, CaseIterable {
        case desc = "desc"
        case asc = "asc"
    }

    /**

     - parameter accountId: (path) account ID 
     - parameter afterLt: (query) omit this parameter to get last transactions (optional)
     - parameter beforeLt: (query) omit this parameter to get last transactions (optional)
     - parameter limit: (query)  (optional, default to 100)
     - parameter sortOrder: (query)  (optional, default to .desc)
     - returns: Transactions
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainAccountTransactions(accountId: String, afterLt: Int64? = nil, beforeLt: Int64? = nil, limit: Int? = nil, sortOrder: SortOrder_getBlockchainAccountTransactions? = nil) async throws -> Transactions {
        return try await getBlockchainAccountTransactionsWithRequestBuilder(accountId: accountId, afterLt: afterLt, beforeLt: beforeLt, limit: limit, sortOrder: sortOrder).execute().body
    }

    /**
     - GET /v2/blockchain/accounts/{account_id}/transactions
     - Get account transactions
     - parameter accountId: (path) account ID 
     - parameter afterLt: (query) omit this parameter to get last transactions (optional)
     - parameter beforeLt: (query) omit this parameter to get last transactions (optional)
     - parameter limit: (query)  (optional, default to 100)
     - parameter sortOrder: (query)  (optional, default to .desc)
     - returns: RequestBuilder<Transactions> 
     */
    open class func getBlockchainAccountTransactionsWithRequestBuilder(accountId: String, afterLt: Int64? = nil, beforeLt: Int64? = nil, limit: Int? = nil, sortOrder: SortOrder_getBlockchainAccountTransactions? = nil) -> RequestBuilder<Transactions> {
        var localVariablePath = "/v2/blockchain/accounts/{account_id}/transactions"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "after_lt": (wrappedValue: afterLt?.encodeToJSON(), isExplode: true),
            "before_lt": (wrappedValue: beforeLt?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "sort_order": (wrappedValue: sortOrder?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Transactions>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter blockId: (path) block ID 
     - returns: BlockchainBlock
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainBlock(blockId: String) async throws -> BlockchainBlock {
        return try await getBlockchainBlockWithRequestBuilder(blockId: blockId).execute().body
    }

    /**
     - GET /v2/blockchain/blocks/{block_id}
     - Get blockchain block data
     - parameter blockId: (path) block ID 
     - returns: RequestBuilder<BlockchainBlock> 
     */
    open class func getBlockchainBlockWithRequestBuilder(blockId: String) -> RequestBuilder<BlockchainBlock> {
        var localVariablePath = "/v2/blockchain/blocks/{block_id}"
        let blockIdPreEscape = "\(APIHelper.mapValueToPathItem(blockId))"
        let blockIdPostEscape = blockIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{block_id}", with: blockIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BlockchainBlock>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter blockId: (path) block ID 
     - returns: Transactions
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainBlockTransactions(blockId: String) async throws -> Transactions {
        return try await getBlockchainBlockTransactionsWithRequestBuilder(blockId: blockId).execute().body
    }

    /**
     - GET /v2/blockchain/blocks/{block_id}/transactions
     - Get transactions from block
     - parameter blockId: (path) block ID 
     - returns: RequestBuilder<Transactions> 
     */
    open class func getBlockchainBlockTransactionsWithRequestBuilder(blockId: String) -> RequestBuilder<Transactions> {
        var localVariablePath = "/v2/blockchain/blocks/{block_id}/transactions"
        let blockIdPreEscape = "\(APIHelper.mapValueToPathItem(blockId))"
        let blockIdPostEscape = blockIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{block_id}", with: blockIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Transactions>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - returns: BlockchainConfig
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainConfig() async throws -> BlockchainConfig {
        return try await getBlockchainConfigWithRequestBuilder().execute().body
    }

    /**
     - GET /v2/blockchain/config
     - Get blockchain config
     - returns: RequestBuilder<BlockchainConfig> 
     */
    open class func getBlockchainConfigWithRequestBuilder() -> RequestBuilder<BlockchainConfig> {
        let localVariablePath = "/v2/blockchain/config"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BlockchainConfig>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: BlockchainConfig
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainConfigFromBlock(masterchainSeqno: Int) async throws -> BlockchainConfig {
        return try await getBlockchainConfigFromBlockWithRequestBuilder(masterchainSeqno: masterchainSeqno).execute().body
    }

    /**
     - GET /v2/blockchain/masterchain/{masterchain_seqno}/config
     - Get blockchain config from a specific block, if present.
     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: RequestBuilder<BlockchainConfig> 
     */
    open class func getBlockchainConfigFromBlockWithRequestBuilder(masterchainSeqno: Int) -> RequestBuilder<BlockchainConfig> {
        var localVariablePath = "/v2/blockchain/masterchain/{masterchain_seqno}/config"
        let masterchainSeqnoPreEscape = "\(APIHelper.mapValueToPathItem(masterchainSeqno))"
        let masterchainSeqnoPostEscape = masterchainSeqnoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{masterchain_seqno}", with: masterchainSeqnoPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BlockchainConfig>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: BlockchainBlocks
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainMasterchainBlocks(masterchainSeqno: Int) async throws -> BlockchainBlocks {
        return try await getBlockchainMasterchainBlocksWithRequestBuilder(masterchainSeqno: masterchainSeqno).execute().body
    }

    /**
     - GET /v2/blockchain/masterchain/{masterchain_seqno}/blocks
     - Get all blocks in all shards and workchains between target and previous masterchain block according to shards last blocks snapshot in masterchain.  We don't recommend to build your app around this method because it has problem with scalability and will work very slow in the future.
     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: RequestBuilder<BlockchainBlocks> 
     */
    open class func getBlockchainMasterchainBlocksWithRequestBuilder(masterchainSeqno: Int) -> RequestBuilder<BlockchainBlocks> {
        var localVariablePath = "/v2/blockchain/masterchain/{masterchain_seqno}/blocks"
        let masterchainSeqnoPreEscape = "\(APIHelper.mapValueToPathItem(masterchainSeqno))"
        let masterchainSeqnoPostEscape = masterchainSeqnoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{masterchain_seqno}", with: masterchainSeqnoPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BlockchainBlocks>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - returns: BlockchainBlock
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainMasterchainHead() async throws -> BlockchainBlock {
        return try await getBlockchainMasterchainHeadWithRequestBuilder().execute().body
    }

    /**
     - GET /v2/blockchain/masterchain-head
     - Get last known masterchain block
     - returns: RequestBuilder<BlockchainBlock> 
     */
    open class func getBlockchainMasterchainHeadWithRequestBuilder() -> RequestBuilder<BlockchainBlock> {
        let localVariablePath = "/v2/blockchain/masterchain-head"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BlockchainBlock>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: BlockchainBlockShards
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainMasterchainShards(masterchainSeqno: Int) async throws -> BlockchainBlockShards {
        return try await getBlockchainMasterchainShardsWithRequestBuilder(masterchainSeqno: masterchainSeqno).execute().body
    }

    /**
     - GET /v2/blockchain/masterchain/{masterchain_seqno}/shards
     - Get blockchain block shards
     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: RequestBuilder<BlockchainBlockShards> 
     */
    open class func getBlockchainMasterchainShardsWithRequestBuilder(masterchainSeqno: Int) -> RequestBuilder<BlockchainBlockShards> {
        var localVariablePath = "/v2/blockchain/masterchain/{masterchain_seqno}/shards"
        let masterchainSeqnoPreEscape = "\(APIHelper.mapValueToPathItem(masterchainSeqno))"
        let masterchainSeqnoPostEscape = masterchainSeqnoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{masterchain_seqno}", with: masterchainSeqnoPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BlockchainBlockShards>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: Transactions
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainMasterchainTransactions(masterchainSeqno: Int) async throws -> Transactions {
        return try await getBlockchainMasterchainTransactionsWithRequestBuilder(masterchainSeqno: masterchainSeqno).execute().body
    }

    /**
     - GET /v2/blockchain/masterchain/{masterchain_seqno}/transactions
     - Get all transactions in all shards and workchains between target and previous masterchain block according to shards last blocks snapshot in masterchain. We don't recommend to build your app around this method because it has problem with scalability and will work very slow in the future.
     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: RequestBuilder<Transactions> 
     */
    open class func getBlockchainMasterchainTransactionsWithRequestBuilder(masterchainSeqno: Int) -> RequestBuilder<Transactions> {
        var localVariablePath = "/v2/blockchain/masterchain/{masterchain_seqno}/transactions"
        let masterchainSeqnoPreEscape = "\(APIHelper.mapValueToPathItem(masterchainSeqno))"
        let masterchainSeqnoPostEscape = masterchainSeqnoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{masterchain_seqno}", with: masterchainSeqnoPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Transactions>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accountId: (path) account ID 
     - returns: BlockchainRawAccount
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainRawAccount(accountId: String) async throws -> BlockchainRawAccount {
        return try await getBlockchainRawAccountWithRequestBuilder(accountId: accountId).execute().body
    }

    /**
     - GET /v2/blockchain/accounts/{account_id}
     - Get low-level information about an account taken directly from the blockchain.
     - parameter accountId: (path) account ID 
     - returns: RequestBuilder<BlockchainRawAccount> 
     */
    open class func getBlockchainRawAccountWithRequestBuilder(accountId: String) -> RequestBuilder<BlockchainRawAccount> {
        var localVariablePath = "/v2/blockchain/accounts/{account_id}"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BlockchainRawAccount>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter transactionId: (path) transaction ID 
     - returns: Transaction
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainTransaction(transactionId: String) async throws -> Transaction {
        return try await getBlockchainTransactionWithRequestBuilder(transactionId: transactionId).execute().body
    }

    /**
     - GET /v2/blockchain/transactions/{transaction_id}
     - Get transaction data
     - parameter transactionId: (path) transaction ID 
     - returns: RequestBuilder<Transaction> 
     */
    open class func getBlockchainTransactionWithRequestBuilder(transactionId: String) -> RequestBuilder<Transaction> {
        var localVariablePath = "/v2/blockchain/transactions/{transaction_id}"
        let transactionIdPreEscape = "\(APIHelper.mapValueToPathItem(transactionId))"
        let transactionIdPostEscape = transactionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{transaction_id}", with: transactionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Transaction>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter msgId: (path) message ID 
     - returns: Transaction
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainTransactionByMessageHash(msgId: String) async throws -> Transaction {
        return try await getBlockchainTransactionByMessageHashWithRequestBuilder(msgId: msgId).execute().body
    }

    /**
     - GET /v2/blockchain/messages/{msg_id}/transaction
     - Get transaction data by message hash
     - parameter msgId: (path) message ID 
     - returns: RequestBuilder<Transaction> 
     */
    open class func getBlockchainTransactionByMessageHashWithRequestBuilder(msgId: String) -> RequestBuilder<Transaction> {
        var localVariablePath = "/v2/blockchain/messages/{msg_id}/transaction"
        let msgIdPreEscape = "\(APIHelper.mapValueToPathItem(msgId))"
        let msgIdPostEscape = msgIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{msg_id}", with: msgIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Transaction>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - returns: Validators
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getBlockchainValidators() async throws -> Validators {
        return try await getBlockchainValidatorsWithRequestBuilder().execute().body
    }

    /**
     - GET /v2/blockchain/validators
     - Get blockchain validators
     - returns: RequestBuilder<Validators> 
     */
    open class func getBlockchainValidatorsWithRequestBuilder() -> RequestBuilder<Validators> {
        let localVariablePath = "/v2/blockchain/validators"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Validators>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - returns: RawBlockchainConfig
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRawBlockchainConfig() async throws -> RawBlockchainConfig {
        return try await getRawBlockchainConfigWithRequestBuilder().execute().body
    }

    /**
     - GET /v2/blockchain/config/raw
     - Get raw blockchain config
     - returns: RequestBuilder<RawBlockchainConfig> 
     */
    open class func getRawBlockchainConfigWithRequestBuilder() -> RequestBuilder<RawBlockchainConfig> {
        let localVariablePath = "/v2/blockchain/config/raw"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RawBlockchainConfig>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: RawBlockchainConfig
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRawBlockchainConfigFromBlock(masterchainSeqno: Int) async throws -> RawBlockchainConfig {
        return try await getRawBlockchainConfigFromBlockWithRequestBuilder(masterchainSeqno: masterchainSeqno).execute().body
    }

    /**
     - GET /v2/blockchain/masterchain/{masterchain_seqno}/config/raw
     - Get raw blockchain config from a specific block, if present.
     - parameter masterchainSeqno: (path) masterchain block seqno 
     - returns: RequestBuilder<RawBlockchainConfig> 
     */
    open class func getRawBlockchainConfigFromBlockWithRequestBuilder(masterchainSeqno: Int) -> RequestBuilder<RawBlockchainConfig> {
        var localVariablePath = "/v2/blockchain/masterchain/{masterchain_seqno}/config/raw"
        let masterchainSeqnoPreEscape = "\(APIHelper.mapValueToPathItem(masterchainSeqno))"
        let masterchainSeqnoPostEscape = masterchainSeqnoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{masterchain_seqno}", with: masterchainSeqnoPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RawBlockchainConfig>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter from: (query)  
     - parameter to: (query)  
     - returns: ReducedBlocks
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getReducedBlockchainBlocks(from: Int64, to: Int64) async throws -> ReducedBlocks {
        return try await getReducedBlockchainBlocksWithRequestBuilder(from: from, to: to).execute().body
    }

    /**
     - GET /v2/blockchain/reduced/blocks
     - Get reduced blockchain blocks data
     - parameter from: (query)  
     - parameter to: (query)  
     - returns: RequestBuilder<ReducedBlocks> 
     */
    open class func getReducedBlockchainBlocksWithRequestBuilder(from: Int64, to: Int64) -> RequestBuilder<ReducedBlocks> {
        let localVariablePath = "/v2/blockchain/reduced/blocks"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": (wrappedValue: from.encodeToJSON(), isExplode: true),
            "to": (wrappedValue: to.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ReducedBlocks>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter sendBlockchainMessageRequest: (body) both a single boc and a batch of boc serialized in base64/hex are accepted 
     - returns: Void
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func sendBlockchainMessage(sendBlockchainMessageRequest: SendBlockchainMessageRequest) async throws {
        return try await sendBlockchainMessageWithRequestBuilder(sendBlockchainMessageRequest: sendBlockchainMessageRequest).execute().body
    }

    /**
     - POST /v2/blockchain/message
     - Send message to blockchain
     - parameter sendBlockchainMessageRequest: (body) both a single boc and a batch of boc serialized in base64/hex are accepted 
     - returns: RequestBuilder<Void> 
     */
    open class func sendBlockchainMessageWithRequestBuilder(sendBlockchainMessageRequest: SendBlockchainMessageRequest) -> RequestBuilder<Void> {
        let localVariablePath = "/v2/blockchain/message"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sendBlockchainMessageRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = TonAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}