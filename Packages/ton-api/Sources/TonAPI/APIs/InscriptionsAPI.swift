//
// InscriptionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class InscriptionsAPI {

    /**

     - parameter accountId: (path) account ID 
     - parameter limit: (query)  (optional, default to 1000)
     - parameter offset: (query)  (optional, default to 0)
     - returns: InscriptionBalances
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAccountInscriptions(accountId: String, limit: Int? = nil, offset: Int? = nil) async throws -> InscriptionBalances {
        return try await getAccountInscriptionsWithRequestBuilder(accountId: accountId, limit: limit, offset: offset).execute().body
    }

    /**
     - GET /v2/experimental/accounts/{account_id}/inscriptions
     - Get all inscriptions by owner address. It's experimental API and can be dropped in the future.
     - parameter accountId: (path) account ID 
     - parameter limit: (query)  (optional, default to 1000)
     - parameter offset: (query)  (optional, default to 0)
     - returns: RequestBuilder<InscriptionBalances> 
     */
    open class func getAccountInscriptionsWithRequestBuilder(accountId: String, limit: Int? = nil, offset: Int? = nil) -> RequestBuilder<InscriptionBalances> {
        var localVariablePath = "/v2/experimental/accounts/{account_id}/inscriptions"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InscriptionBalances>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accountId: (path) account ID 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - parameter beforeLt: (query) omit this parameter to get last events (optional)
     - parameter limit: (query)  (optional, default to 100)
     - returns: AccountEvents
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAccountInscriptionsHistory(accountId: String, acceptLanguage: String? = nil, beforeLt: Int64? = nil, limit: Int? = nil) async throws -> AccountEvents {
        return try await getAccountInscriptionsHistoryWithRequestBuilder(accountId: accountId, acceptLanguage: acceptLanguage, beforeLt: beforeLt, limit: limit).execute().body
    }

    /**
     - GET /v2/experimental/accounts/{account_id}/inscriptions/history
     - Get the transfer inscriptions history for account. It's experimental API and can be dropped in the future.
     - parameter accountId: (path) account ID 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - parameter beforeLt: (query) omit this parameter to get last events (optional)
     - parameter limit: (query)  (optional, default to 100)
     - returns: RequestBuilder<AccountEvents> 
     */
    open class func getAccountInscriptionsHistoryWithRequestBuilder(accountId: String, acceptLanguage: String? = nil, beforeLt: Int64? = nil, limit: Int? = nil) -> RequestBuilder<AccountEvents> {
        var localVariablePath = "/v2/experimental/accounts/{account_id}/inscriptions/history"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "before_lt": (wrappedValue: beforeLt?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Accept-Language": acceptLanguage?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountEvents>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accountId: (path) account ID 
     - parameter ticker: (path)  
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - parameter beforeLt: (query) omit this parameter to get last events (optional)
     - parameter limit: (query)  (optional, default to 100)
     - returns: AccountEvents
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getAccountInscriptionsHistoryByTicker(accountId: String, ticker: String, acceptLanguage: String? = nil, beforeLt: Int64? = nil, limit: Int? = nil) async throws -> AccountEvents {
        return try await getAccountInscriptionsHistoryByTickerWithRequestBuilder(accountId: accountId, ticker: ticker, acceptLanguage: acceptLanguage, beforeLt: beforeLt, limit: limit).execute().body
    }

    /**
     - GET /v2/experimental/accounts/{account_id}/inscriptions/{ticker}/history
     - Get the transfer inscriptions history for account. It's experimental API and can be dropped in the future.
     - parameter accountId: (path) account ID 
     - parameter ticker: (path)  
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - parameter beforeLt: (query) omit this parameter to get last events (optional)
     - parameter limit: (query)  (optional, default to 100)
     - returns: RequestBuilder<AccountEvents> 
     */
    open class func getAccountInscriptionsHistoryByTickerWithRequestBuilder(accountId: String, ticker: String, acceptLanguage: String? = nil, beforeLt: Int64? = nil, limit: Int? = nil) -> RequestBuilder<AccountEvents> {
        var localVariablePath = "/v2/experimental/accounts/{account_id}/inscriptions/{ticker}/history"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let tickerPreEscape = "\(APIHelper.mapValueToPathItem(ticker))"
        let tickerPostEscape = tickerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ticker}", with: tickerPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "before_lt": (wrappedValue: beforeLt?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Accept-Language": acceptLanguage?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountEvents>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     * enum for parameter type
     */
    public enum ModelType_getInscriptionOpTemplate: String, CaseIterable {
        case ton20 = "ton20"
        case gram20 = "gram20"
    }

    /**
     * enum for parameter operation
     */
    public enum Operation_getInscriptionOpTemplate: String, CaseIterable {
        case transfer = "transfer"
    }

    /**

     - parameter type: (query)  
     - parameter operation: (query)  
     - parameter amount: (query)  
     - parameter ticker: (query)  
     - parameter who: (query)  
     - parameter destination: (query)  (optional)
     - parameter comment: (query)  (optional)
     - returns: GetInscriptionOpTemplate200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getInscriptionOpTemplate(type: ModelType_getInscriptionOpTemplate, operation: Operation_getInscriptionOpTemplate, amount: String, ticker: String, who: String, destination: String? = nil, comment: String? = nil) async throws -> GetInscriptionOpTemplate200Response {
        return try await getInscriptionOpTemplateWithRequestBuilder(type: type, operation: operation, amount: amount, ticker: ticker, who: who, destination: destination, comment: comment).execute().body
    }

    /**
     - GET /v2/experimental/inscriptions/op-template
     - return comment for making operation with inscription. please don't use it if you don't know what you are doing
     - parameter type: (query)  
     - parameter operation: (query)  
     - parameter amount: (query)  
     - parameter ticker: (query)  
     - parameter who: (query)  
     - parameter destination: (query)  (optional)
     - parameter comment: (query)  (optional)
     - returns: RequestBuilder<GetInscriptionOpTemplate200Response> 
     */
    open class func getInscriptionOpTemplateWithRequestBuilder(type: ModelType_getInscriptionOpTemplate, operation: Operation_getInscriptionOpTemplate, amount: String, ticker: String, who: String, destination: String? = nil, comment: String? = nil) -> RequestBuilder<GetInscriptionOpTemplate200Response> {
        let localVariablePath = "/v2/experimental/inscriptions/op-template"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": (wrappedValue: type.encodeToJSON(), isExplode: true),
            "destination": (wrappedValue: destination?.encodeToJSON(), isExplode: true),
            "comment": (wrappedValue: comment?.encodeToJSON(), isExplode: true),
            "operation": (wrappedValue: operation.encodeToJSON(), isExplode: true),
            "amount": (wrappedValue: amount.encodeToJSON(), isExplode: true),
            "ticker": (wrappedValue: ticker.encodeToJSON(), isExplode: true),
            "who": (wrappedValue: who.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetInscriptionOpTemplate200Response>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}