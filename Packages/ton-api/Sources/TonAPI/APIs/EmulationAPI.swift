//
// EmulationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class EmulationAPI {

    /**

     - parameter gaslessEstimateRequestMessagesInner: (body) bag-of-cells serialized to hex 
     - returns: DecodedMessage
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func decodeMessage(gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner) async throws -> DecodedMessage {
        return try await decodeMessageWithRequestBuilder(gaslessEstimateRequestMessagesInner: gaslessEstimateRequestMessagesInner).execute().body
    }

    /**
     - POST /v2/message/decode
     - Decode a given message. Only external incoming messages can be decoded currently.
     - parameter gaslessEstimateRequestMessagesInner: (body) bag-of-cells serialized to hex 
     - returns: RequestBuilder<DecodedMessage> 
     */
    open class func decodeMessageWithRequestBuilder(gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner) -> RequestBuilder<DecodedMessage> {
        let localVariablePath = "/v2/message/decode"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gaslessEstimateRequestMessagesInner)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DecodedMessage>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter accountId: (path) account ID 
     - parameter gaslessEstimateRequestMessagesInner: (body) bag-of-cells serialized to hex 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - parameter ignoreSignatureCheck: (query)  (optional)
     - returns: AccountEvent
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func emulateMessageToAccountEvent(accountId: String, gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner, acceptLanguage: String? = nil, ignoreSignatureCheck: Bool? = nil) async throws -> AccountEvent {
        return try await emulateMessageToAccountEventWithRequestBuilder(accountId: accountId, gaslessEstimateRequestMessagesInner: gaslessEstimateRequestMessagesInner, acceptLanguage: acceptLanguage, ignoreSignatureCheck: ignoreSignatureCheck).execute().body
    }

    /**
     - POST /v2/accounts/{account_id}/events/emulate
     - Emulate sending message to blockchain
     - parameter accountId: (path) account ID 
     - parameter gaslessEstimateRequestMessagesInner: (body) bag-of-cells serialized to hex 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - parameter ignoreSignatureCheck: (query)  (optional)
     - returns: RequestBuilder<AccountEvent> 
     */
    open class func emulateMessageToAccountEventWithRequestBuilder(accountId: String, gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner, acceptLanguage: String? = nil, ignoreSignatureCheck: Bool? = nil) -> RequestBuilder<AccountEvent> {
        var localVariablePath = "/v2/accounts/{account_id}/events/emulate"
        let accountIdPreEscape = "\(APIHelper.mapValueToPathItem(accountId))"
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{account_id}", with: accountIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gaslessEstimateRequestMessagesInner)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ignore_signature_check": (wrappedValue: ignoreSignatureCheck?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Accept-Language": acceptLanguage?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AccountEvent>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter gaslessEstimateRequestMessagesInner: (body) bag-of-cells serialized to hex 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - parameter ignoreSignatureCheck: (query)  (optional)
     - returns: Event
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func emulateMessageToEvent(gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner, acceptLanguage: String? = nil, ignoreSignatureCheck: Bool? = nil) async throws -> Event {
        return try await emulateMessageToEventWithRequestBuilder(gaslessEstimateRequestMessagesInner: gaslessEstimateRequestMessagesInner, acceptLanguage: acceptLanguage, ignoreSignatureCheck: ignoreSignatureCheck).execute().body
    }

    /**
     - POST /v2/events/emulate
     - Emulate sending message to blockchain
     - parameter gaslessEstimateRequestMessagesInner: (body) bag-of-cells serialized to hex 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - parameter ignoreSignatureCheck: (query)  (optional)
     - returns: RequestBuilder<Event> 
     */
    open class func emulateMessageToEventWithRequestBuilder(gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner, acceptLanguage: String? = nil, ignoreSignatureCheck: Bool? = nil) -> RequestBuilder<Event> {
        let localVariablePath = "/v2/events/emulate"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gaslessEstimateRequestMessagesInner)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ignore_signature_check": (wrappedValue: ignoreSignatureCheck?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Accept-Language": acceptLanguage?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Event>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter gaslessEstimateRequestMessagesInner: (body) bag-of-cells serialized to hex 
     - parameter ignoreSignatureCheck: (query)  (optional)
     - returns: Trace
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func emulateMessageToTrace(gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner, ignoreSignatureCheck: Bool? = nil) async throws -> Trace {
        return try await emulateMessageToTraceWithRequestBuilder(gaslessEstimateRequestMessagesInner: gaslessEstimateRequestMessagesInner, ignoreSignatureCheck: ignoreSignatureCheck).execute().body
    }

    /**
     - POST /v2/traces/emulate
     - Emulate sending message to blockchain
     - parameter gaslessEstimateRequestMessagesInner: (body) bag-of-cells serialized to hex 
     - parameter ignoreSignatureCheck: (query)  (optional)
     - returns: RequestBuilder<Trace> 
     */
    open class func emulateMessageToTraceWithRequestBuilder(gaslessEstimateRequestMessagesInner: GaslessEstimateRequestMessagesInner, ignoreSignatureCheck: Bool? = nil) -> RequestBuilder<Trace> {
        let localVariablePath = "/v2/traces/emulate"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: gaslessEstimateRequestMessagesInner)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ignore_signature_check": (wrappedValue: ignoreSignatureCheck?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Trace>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter emulateMessageToWalletRequest: (body) bag-of-cells serialized to base64/hex and additional parameters to configure emulation 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - returns: MessageConsequences
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func emulateMessageToWallet(emulateMessageToWalletRequest: EmulateMessageToWalletRequest, acceptLanguage: String? = nil) async throws -> MessageConsequences {
        return try await emulateMessageToWalletWithRequestBuilder(emulateMessageToWalletRequest: emulateMessageToWalletRequest, acceptLanguage: acceptLanguage).execute().body
    }

    /**
     - POST /v2/wallet/emulate
     - Emulate sending message to blockchain
     - parameter emulateMessageToWalletRequest: (body) bag-of-cells serialized to base64/hex and additional parameters to configure emulation 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - returns: RequestBuilder<MessageConsequences> 
     */
    open class func emulateMessageToWalletWithRequestBuilder(emulateMessageToWalletRequest: EmulateMessageToWalletRequest, acceptLanguage: String? = nil) -> RequestBuilder<MessageConsequences> {
        let localVariablePath = "/v2/wallet/emulate"
        let localVariableURLString = TonAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: emulateMessageToWalletRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Accept-Language": acceptLanguage?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MessageConsequences>.Type = TonAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}