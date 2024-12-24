# Swift5 API client for TonAPI

Provide access to indexed TON blockchain

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 2.0.0
- Package version: 
- Generator version: 7.10.0
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://tonapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountsAPI* | [**accountDnsBackResolve**](docs/AccountsAPI.md#accountdnsbackresolve) | **GET** /v2/accounts/{account_id}/dns/backresolve | 
*AccountsAPI* | [**emulateMessageToAccountEvent**](docs/AccountsAPI.md#emulatemessagetoaccountevent) | **POST** /v2/accounts/{account_id}/events/emulate | 
*AccountsAPI* | [**getAccount**](docs/AccountsAPI.md#getaccount) | **GET** /v2/accounts/{account_id} | 
*AccountsAPI* | [**getAccountDiff**](docs/AccountsAPI.md#getaccountdiff) | **GET** /v2/accounts/{account_id}/diff | 
*AccountsAPI* | [**getAccountDnsExpiring**](docs/AccountsAPI.md#getaccountdnsexpiring) | **GET** /v2/accounts/{account_id}/dns/expiring | 
*AccountsAPI* | [**getAccountEvent**](docs/AccountsAPI.md#getaccountevent) | **GET** /v2/accounts/{account_id}/events/{event_id} | 
*AccountsAPI* | [**getAccountEvents**](docs/AccountsAPI.md#getaccountevents) | **GET** /v2/accounts/{account_id}/events | 
*AccountsAPI* | [**getAccountJettonBalance**](docs/AccountsAPI.md#getaccountjettonbalance) | **GET** /v2/accounts/{account_id}/jettons/{jetton_id} | 
*AccountsAPI* | [**getAccountJettonHistoryByID**](docs/AccountsAPI.md#getaccountjettonhistorybyid) | **GET** /v2/accounts/{account_id}/jettons/{jetton_id}/history | 
*AccountsAPI* | [**getAccountJettonsBalances**](docs/AccountsAPI.md#getaccountjettonsbalances) | **GET** /v2/accounts/{account_id}/jettons | 
*AccountsAPI* | [**getAccountJettonsHistory**](docs/AccountsAPI.md#getaccountjettonshistory) | **GET** /v2/accounts/{account_id}/jettons/history | 
*AccountsAPI* | [**getAccountMultisigs**](docs/AccountsAPI.md#getaccountmultisigs) | **GET** /v2/accounts/{account_id}/multisigs | 
*AccountsAPI* | [**getAccountNftItems**](docs/AccountsAPI.md#getaccountnftitems) | **GET** /v2/accounts/{account_id}/nfts | 
*AccountsAPI* | [**getAccountPublicKey**](docs/AccountsAPI.md#getaccountpublickey) | **GET** /v2/accounts/{account_id}/publickey | 
*AccountsAPI* | [**getAccountSubscriptions**](docs/AccountsAPI.md#getaccountsubscriptions) | **GET** /v2/accounts/{account_id}/subscriptions | 
*AccountsAPI* | [**getAccountTraces**](docs/AccountsAPI.md#getaccounttraces) | **GET** /v2/accounts/{account_id}/traces | 
*AccountsAPI* | [**getAccounts**](docs/AccountsAPI.md#getaccounts) | **POST** /v2/accounts/_bulk | 
*AccountsAPI* | [**reindexAccount**](docs/AccountsAPI.md#reindexaccount) | **POST** /v2/accounts/{account_id}/reindex | 
*AccountsAPI* | [**searchAccounts**](docs/AccountsAPI.md#searchaccounts) | **GET** /v2/accounts/search | 
*BlockchainAPI* | [**blockchainAccountInspect**](docs/BlockchainAPI.md#blockchainaccountinspect) | **GET** /v2/blockchain/accounts/{account_id}/inspect | 
*BlockchainAPI* | [**execGetMethodForBlockchainAccount**](docs/BlockchainAPI.md#execgetmethodforblockchainaccount) | **GET** /v2/blockchain/accounts/{account_id}/methods/{method_name} | 
*BlockchainAPI* | [**getBlockchainAccountTransactions**](docs/BlockchainAPI.md#getblockchainaccounttransactions) | **GET** /v2/blockchain/accounts/{account_id}/transactions | 
*BlockchainAPI* | [**getBlockchainBlock**](docs/BlockchainAPI.md#getblockchainblock) | **GET** /v2/blockchain/blocks/{block_id} | 
*BlockchainAPI* | [**getBlockchainBlockTransactions**](docs/BlockchainAPI.md#getblockchainblocktransactions) | **GET** /v2/blockchain/blocks/{block_id}/transactions | 
*BlockchainAPI* | [**getBlockchainConfig**](docs/BlockchainAPI.md#getblockchainconfig) | **GET** /v2/blockchain/config | 
*BlockchainAPI* | [**getBlockchainConfigFromBlock**](docs/BlockchainAPI.md#getblockchainconfigfromblock) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/config | 
*BlockchainAPI* | [**getBlockchainMasterchainBlocks**](docs/BlockchainAPI.md#getblockchainmasterchainblocks) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/blocks | 
*BlockchainAPI* | [**getBlockchainMasterchainHead**](docs/BlockchainAPI.md#getblockchainmasterchainhead) | **GET** /v2/blockchain/masterchain-head | 
*BlockchainAPI* | [**getBlockchainMasterchainShards**](docs/BlockchainAPI.md#getblockchainmasterchainshards) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/shards | 
*BlockchainAPI* | [**getBlockchainMasterchainTransactions**](docs/BlockchainAPI.md#getblockchainmasterchaintransactions) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/transactions | 
*BlockchainAPI* | [**getBlockchainRawAccount**](docs/BlockchainAPI.md#getblockchainrawaccount) | **GET** /v2/blockchain/accounts/{account_id} | 
*BlockchainAPI* | [**getBlockchainTransaction**](docs/BlockchainAPI.md#getblockchaintransaction) | **GET** /v2/blockchain/transactions/{transaction_id} | 
*BlockchainAPI* | [**getBlockchainTransactionByMessageHash**](docs/BlockchainAPI.md#getblockchaintransactionbymessagehash) | **GET** /v2/blockchain/messages/{msg_id}/transaction | 
*BlockchainAPI* | [**getBlockchainValidators**](docs/BlockchainAPI.md#getblockchainvalidators) | **GET** /v2/blockchain/validators | 
*BlockchainAPI* | [**getRawBlockchainConfig**](docs/BlockchainAPI.md#getrawblockchainconfig) | **GET** /v2/blockchain/config/raw | 
*BlockchainAPI* | [**getRawBlockchainConfigFromBlock**](docs/BlockchainAPI.md#getrawblockchainconfigfromblock) | **GET** /v2/blockchain/masterchain/{masterchain_seqno}/config/raw | 
*BlockchainAPI* | [**getReducedBlockchainBlocks**](docs/BlockchainAPI.md#getreducedblockchainblocks) | **GET** /v2/blockchain/reduced/blocks | 
*BlockchainAPI* | [**sendBlockchainMessage**](docs/BlockchainAPI.md#sendblockchainmessage) | **POST** /v2/blockchain/message | 
*ConnectAPI* | [**getAccountInfoByStateInit**](docs/ConnectAPI.md#getaccountinfobystateinit) | **POST** /v2/tonconnect/stateinit | 
*ConnectAPI* | [**getTonConnectPayload**](docs/ConnectAPI.md#gettonconnectpayload) | **GET** /v2/tonconnect/payload | 
*DNSAPI* | [**dnsResolve**](docs/DNSAPI.md#dnsresolve) | **GET** /v2/dns/{domain_name}/resolve | 
*DNSAPI* | [**getAllAuctions**](docs/DNSAPI.md#getallauctions) | **GET** /v2/dns/auctions | 
*DNSAPI* | [**getDnsInfo**](docs/DNSAPI.md#getdnsinfo) | **GET** /v2/dns/{domain_name} | 
*DNSAPI* | [**getDomainBids**](docs/DNSAPI.md#getdomainbids) | **GET** /v2/dns/{domain_name}/bids | 
*EmulationAPI* | [**decodeMessage**](docs/EmulationAPI.md#decodemessage) | **POST** /v2/message/decode | 
*EmulationAPI* | [**emulateMessageToAccountEvent**](docs/EmulationAPI.md#emulatemessagetoaccountevent) | **POST** /v2/accounts/{account_id}/events/emulate | 
*EmulationAPI* | [**emulateMessageToEvent**](docs/EmulationAPI.md#emulatemessagetoevent) | **POST** /v2/events/emulate | 
*EmulationAPI* | [**emulateMessageToTrace**](docs/EmulationAPI.md#emulatemessagetotrace) | **POST** /v2/traces/emulate | 
*EmulationAPI* | [**emulateMessageToWallet**](docs/EmulationAPI.md#emulatemessagetowallet) | **POST** /v2/wallet/emulate | 
*EventsAPI* | [**emulateMessageToEvent**](docs/EventsAPI.md#emulatemessagetoevent) | **POST** /v2/events/emulate | 
*EventsAPI* | [**getEvent**](docs/EventsAPI.md#getevent) | **GET** /v2/events/{event_id} | 
*GaslessAPI* | [**gaslessConfig**](docs/GaslessAPI.md#gaslessconfig) | **GET** /v2/gasless/config | 
*GaslessAPI* | [**gaslessEstimate**](docs/GaslessAPI.md#gaslessestimate) | **POST** /v2/gasless/estimate/{master_id} | 
*GaslessAPI* | [**gaslessSend**](docs/GaslessAPI.md#gaslesssend) | **POST** /v2/gasless/send | 
*InscriptionsAPI* | [**getAccountInscriptions**](docs/InscriptionsAPI.md#getaccountinscriptions) | **GET** /v2/experimental/accounts/{account_id}/inscriptions | 
*InscriptionsAPI* | [**getAccountInscriptionsHistory**](docs/InscriptionsAPI.md#getaccountinscriptionshistory) | **GET** /v2/experimental/accounts/{account_id}/inscriptions/history | 
*InscriptionsAPI* | [**getAccountInscriptionsHistoryByTicker**](docs/InscriptionsAPI.md#getaccountinscriptionshistorybyticker) | **GET** /v2/experimental/accounts/{account_id}/inscriptions/{ticker}/history | 
*InscriptionsAPI* | [**getInscriptionOpTemplate**](docs/InscriptionsAPI.md#getinscriptionoptemplate) | **GET** /v2/experimental/inscriptions/op-template | 
*JettonsAPI* | [**getJettonHolders**](docs/JettonsAPI.md#getjettonholders) | **GET** /v2/jettons/{account_id}/holders | 
*JettonsAPI* | [**getJettonInfo**](docs/JettonsAPI.md#getjettoninfo) | **GET** /v2/jettons/{account_id} | 
*JettonsAPI* | [**getJettonInfosByAddresses**](docs/JettonsAPI.md#getjettoninfosbyaddresses) | **POST** /v2/jettons/_bulk | 
*JettonsAPI* | [**getJettonTransferPayload**](docs/JettonsAPI.md#getjettontransferpayload) | **GET** /v2/jettons/{jetton_id}/transfer/{account_id}/payload | 
*JettonsAPI* | [**getJettons**](docs/JettonsAPI.md#getjettons) | **GET** /v2/jettons | 
*JettonsAPI* | [**getJettonsEvents**](docs/JettonsAPI.md#getjettonsevents) | **GET** /v2/events/{event_id}/jettons | 
*LiteServerAPI* | [**getAllRawShardsInfo**](docs/LiteServerAPI.md#getallrawshardsinfo) | **GET** /v2/liteserver/get_all_shards_info/{block_id} | 
*LiteServerAPI* | [**getOutMsgQueueSizes**](docs/LiteServerAPI.md#getoutmsgqueuesizes) | **GET** /v2/liteserver/get_out_msg_queue_sizes | 
*LiteServerAPI* | [**getRawAccountState**](docs/LiteServerAPI.md#getrawaccountstate) | **GET** /v2/liteserver/get_account_state/{account_id} | 
*LiteServerAPI* | [**getRawBlockProof**](docs/LiteServerAPI.md#getrawblockproof) | **GET** /v2/liteserver/get_block_proof | 
*LiteServerAPI* | [**getRawBlockchainBlock**](docs/LiteServerAPI.md#getrawblockchainblock) | **GET** /v2/liteserver/get_block/{block_id} | 
*LiteServerAPI* | [**getRawBlockchainBlockHeader**](docs/LiteServerAPI.md#getrawblockchainblockheader) | **GET** /v2/liteserver/get_block_header/{block_id} | 
*LiteServerAPI* | [**getRawBlockchainBlockState**](docs/LiteServerAPI.md#getrawblockchainblockstate) | **GET** /v2/liteserver/get_state/{block_id} | 
*LiteServerAPI* | [**getRawConfig**](docs/LiteServerAPI.md#getrawconfig) | **GET** /v2/liteserver/get_config_all/{block_id} | 
*LiteServerAPI* | [**getRawListBlockTransactions**](docs/LiteServerAPI.md#getrawlistblocktransactions) | **GET** /v2/liteserver/list_block_transactions/{block_id} | 
*LiteServerAPI* | [**getRawMasterchainInfo**](docs/LiteServerAPI.md#getrawmasterchaininfo) | **GET** /v2/liteserver/get_masterchain_info | 
*LiteServerAPI* | [**getRawMasterchainInfoExt**](docs/LiteServerAPI.md#getrawmasterchaininfoext) | **GET** /v2/liteserver/get_masterchain_info_ext | 
*LiteServerAPI* | [**getRawShardBlockProof**](docs/LiteServerAPI.md#getrawshardblockproof) | **GET** /v2/liteserver/get_shard_block_proof/{block_id} | 
*LiteServerAPI* | [**getRawShardInfo**](docs/LiteServerAPI.md#getrawshardinfo) | **GET** /v2/liteserver/get_shard_info/{block_id} | 
*LiteServerAPI* | [**getRawTime**](docs/LiteServerAPI.md#getrawtime) | **GET** /v2/liteserver/get_time | 
*LiteServerAPI* | [**getRawTransactions**](docs/LiteServerAPI.md#getrawtransactions) | **GET** /v2/liteserver/get_transactions/{account_id} | 
*LiteServerAPI* | [**sendRawMessage**](docs/LiteServerAPI.md#sendrawmessage) | **POST** /v2/liteserver/send_message | 
*MultisigAPI* | [**getMultisigAccount**](docs/MultisigAPI.md#getmultisigaccount) | **GET** /v2/multisig/{account_id} | 
*NFTAPI* | [**getAccountNftHistory**](docs/NFTAPI.md#getaccountnfthistory) | **GET** /v2/accounts/{account_id}/nfts/history | 
*NFTAPI* | [**getItemsFromCollection**](docs/NFTAPI.md#getitemsfromcollection) | **GET** /v2/nfts/collections/{account_id}/items | 
*NFTAPI* | [**getNftCollection**](docs/NFTAPI.md#getnftcollection) | **GET** /v2/nfts/collections/{account_id} | 
*NFTAPI* | [**getNftCollectionItemsByAddresses**](docs/NFTAPI.md#getnftcollectionitemsbyaddresses) | **POST** /v2/nfts/collections/_bulk | 
*NFTAPI* | [**getNftCollections**](docs/NFTAPI.md#getnftcollections) | **GET** /v2/nfts/collections | 
*NFTAPI* | [**getNftHistoryByID**](docs/NFTAPI.md#getnfthistorybyid) | **GET** /v2/nfts/{account_id}/history | 
*NFTAPI* | [**getNftItemByAddress**](docs/NFTAPI.md#getnftitembyaddress) | **GET** /v2/nfts/{account_id} | 
*NFTAPI* | [**getNftItemsByAddresses**](docs/NFTAPI.md#getnftitemsbyaddresses) | **POST** /v2/nfts/_bulk | 
*OpenapiAPI* | [**getOpenapiJson**](docs/OpenapiAPI.md#getopenapijson) | **GET** /v2/openapi.json | 
*OpenapiAPI* | [**getOpenapiYml**](docs/OpenapiAPI.md#getopenapiyml) | **GET** /v2/openapi.yml | 
*RatesAPI* | [**getChartRates**](docs/RatesAPI.md#getchartrates) | **GET** /v2/rates/chart | 
*RatesAPI* | [**getMarketsRates**](docs/RatesAPI.md#getmarketsrates) | **GET** /v2/rates/markets | 
*RatesAPI* | [**getRates**](docs/RatesAPI.md#getrates) | **GET** /v2/rates | 
*StakingAPI* | [**getAccountNominatorsPools**](docs/StakingAPI.md#getaccountnominatorspools) | **GET** /v2/staking/nominator/{account_id}/pools | 
*StakingAPI* | [**getStakingPoolHistory**](docs/StakingAPI.md#getstakingpoolhistory) | **GET** /v2/staking/pool/{account_id}/history | 
*StakingAPI* | [**getStakingPoolInfo**](docs/StakingAPI.md#getstakingpoolinfo) | **GET** /v2/staking/pool/{account_id} | 
*StakingAPI* | [**getStakingPools**](docs/StakingAPI.md#getstakingpools) | **GET** /v2/staking/pools | 
*StorageAPI* | [**getStorageProviders**](docs/StorageAPI.md#getstorageproviders) | **GET** /v2/storage/providers | 
*TracesAPI* | [**emulateMessageToTrace**](docs/TracesAPI.md#emulatemessagetotrace) | **POST** /v2/traces/emulate | 
*TracesAPI* | [**getTrace**](docs/TracesAPI.md#gettrace) | **GET** /v2/traces/{trace_id} | 
*UtilitiesAPI* | [**addressParse**](docs/UtilitiesAPI.md#addressparse) | **GET** /v2/address/{account_id}/parse | 
*UtilitiesAPI* | [**status**](docs/UtilitiesAPI.md#status) | **GET** /v2/status | 
*WalletAPI* | [**emulateMessageToWallet**](docs/WalletAPI.md#emulatemessagetowallet) | **POST** /v2/wallet/emulate | 
*WalletAPI* | [**getAccountSeqno**](docs/WalletAPI.md#getaccountseqno) | **GET** /v2/wallet/{account_id}/seqno | 
*WalletAPI* | [**getWalletsByPublicKey**](docs/WalletAPI.md#getwalletsbypublickey) | **GET** /v2/pubkeys/{public_key}/wallets | 
*WalletAPI* | [**tonConnectProof**](docs/WalletAPI.md#tonconnectproof) | **POST** /v2/wallet/auth/proof | 


## Documentation For Models

 - [AccStatusChange](docs/AccStatusChange.md)
 - [Account](docs/Account.md)
 - [AccountAddress](docs/AccountAddress.md)
 - [AccountEvent](docs/AccountEvent.md)
 - [AccountEvents](docs/AccountEvents.md)
 - [AccountInfoByStateInit](docs/AccountInfoByStateInit.md)
 - [AccountStaking](docs/AccountStaking.md)
 - [AccountStakingInfo](docs/AccountStakingInfo.md)
 - [AccountStatus](docs/AccountStatus.md)
 - [AccountStorageInfo](docs/AccountStorageInfo.md)
 - [Accounts](docs/Accounts.md)
 - [Action](docs/Action.md)
 - [ActionPhase](docs/ActionPhase.md)
 - [ActionSimplePreview](docs/ActionSimplePreview.md)
 - [AddressParse200Response](docs/AddressParse200Response.md)
 - [AddressParse200ResponseBounceable](docs/AddressParse200ResponseBounceable.md)
 - [ApyHistory](docs/ApyHistory.md)
 - [Auction](docs/Auction.md)
 - [AuctionBidAction](docs/AuctionBidAction.md)
 - [Auctions](docs/Auctions.md)
 - [BlockCurrencyCollection](docs/BlockCurrencyCollection.md)
 - [BlockCurrencyCollectionOtherInner](docs/BlockCurrencyCollectionOtherInner.md)
 - [BlockLimits](docs/BlockLimits.md)
 - [BlockParamLimits](docs/BlockParamLimits.md)
 - [BlockRaw](docs/BlockRaw.md)
 - [BlockValueFlow](docs/BlockValueFlow.md)
 - [BlockchainAccountInspect](docs/BlockchainAccountInspect.md)
 - [BlockchainBlock](docs/BlockchainBlock.md)
 - [BlockchainBlockShards](docs/BlockchainBlockShards.md)
 - [BlockchainBlockShardsShardsInner](docs/BlockchainBlockShardsShardsInner.md)
 - [BlockchainBlocks](docs/BlockchainBlocks.md)
 - [BlockchainConfig](docs/BlockchainConfig.md)
 - [BlockchainConfig10](docs/BlockchainConfig10.md)
 - [BlockchainConfig11](docs/BlockchainConfig11.md)
 - [BlockchainConfig12](docs/BlockchainConfig12.md)
 - [BlockchainConfig13](docs/BlockchainConfig13.md)
 - [BlockchainConfig14](docs/BlockchainConfig14.md)
 - [BlockchainConfig15](docs/BlockchainConfig15.md)
 - [BlockchainConfig16](docs/BlockchainConfig16.md)
 - [BlockchainConfig17](docs/BlockchainConfig17.md)
 - [BlockchainConfig18](docs/BlockchainConfig18.md)
 - [BlockchainConfig18StoragePricesInner](docs/BlockchainConfig18StoragePricesInner.md)
 - [BlockchainConfig20](docs/BlockchainConfig20.md)
 - [BlockchainConfig21](docs/BlockchainConfig21.md)
 - [BlockchainConfig22](docs/BlockchainConfig22.md)
 - [BlockchainConfig23](docs/BlockchainConfig23.md)
 - [BlockchainConfig24](docs/BlockchainConfig24.md)
 - [BlockchainConfig25](docs/BlockchainConfig25.md)
 - [BlockchainConfig28](docs/BlockchainConfig28.md)
 - [BlockchainConfig29](docs/BlockchainConfig29.md)
 - [BlockchainConfig31](docs/BlockchainConfig31.md)
 - [BlockchainConfig40](docs/BlockchainConfig40.md)
 - [BlockchainConfig43](docs/BlockchainConfig43.md)
 - [BlockchainConfig44](docs/BlockchainConfig44.md)
 - [BlockchainConfig45](docs/BlockchainConfig45.md)
 - [BlockchainConfig45ContractsInner](docs/BlockchainConfig45ContractsInner.md)
 - [BlockchainConfig5](docs/BlockchainConfig5.md)
 - [BlockchainConfig6](docs/BlockchainConfig6.md)
 - [BlockchainConfig7](docs/BlockchainConfig7.md)
 - [BlockchainConfig71](docs/BlockchainConfig71.md)
 - [BlockchainConfig79](docs/BlockchainConfig79.md)
 - [BlockchainConfig7CurrenciesInner](docs/BlockchainConfig7CurrenciesInner.md)
 - [BlockchainConfig8](docs/BlockchainConfig8.md)
 - [BlockchainConfig9](docs/BlockchainConfig9.md)
 - [BlockchainRawAccount](docs/BlockchainRawAccount.md)
 - [BlockchainRawAccountLibrariesInner](docs/BlockchainRawAccountLibrariesInner.md)
 - [BouncePhaseType](docs/BouncePhaseType.md)
 - [ComputePhase](docs/ComputePhase.md)
 - [ComputeSkipReason](docs/ComputeSkipReason.md)
 - [ConfigProposalSetup](docs/ConfigProposalSetup.md)
 - [ContractDeployAction](docs/ContractDeployAction.md)
 - [CreditPhase](docs/CreditPhase.md)
 - [DecodedMessage](docs/DecodedMessage.md)
 - [DecodedMessageExtInMsgDecoded](docs/DecodedMessageExtInMsgDecoded.md)
 - [DecodedMessageExtInMsgDecodedWalletHighloadV2](docs/DecodedMessageExtInMsgDecodedWalletHighloadV2.md)
 - [DecodedMessageExtInMsgDecodedWalletV3](docs/DecodedMessageExtInMsgDecodedWalletV3.md)
 - [DecodedMessageExtInMsgDecodedWalletV4](docs/DecodedMessageExtInMsgDecodedWalletV4.md)
 - [DecodedMessageExtInMsgDecodedWalletV5](docs/DecodedMessageExtInMsgDecodedWalletV5.md)
 - [DecodedRawMessage](docs/DecodedRawMessage.md)
 - [DecodedRawMessageMessage](docs/DecodedRawMessageMessage.md)
 - [DepositStakeAction](docs/DepositStakeAction.md)
 - [DnsExpiring](docs/DnsExpiring.md)
 - [DnsExpiringItemsInner](docs/DnsExpiringItemsInner.md)
 - [DnsRecord](docs/DnsRecord.md)
 - [DomainBid](docs/DomainBid.md)
 - [DomainBids](docs/DomainBids.md)
 - [DomainInfo](docs/DomainInfo.md)
 - [DomainNames](docs/DomainNames.md)
 - [DomainRenewAction](docs/DomainRenewAction.md)
 - [EcPreview](docs/EcPreview.md)
 - [ElectionsDepositStakeAction](docs/ElectionsDepositStakeAction.md)
 - [ElectionsRecoverStakeAction](docs/ElectionsRecoverStakeAction.md)
 - [EmulateMessageToWalletRequest](docs/EmulateMessageToWalletRequest.md)
 - [EmulateMessageToWalletRequestParamsInner](docs/EmulateMessageToWalletRequestParamsInner.md)
 - [EncryptedComment](docs/EncryptedComment.md)
 - [Event](docs/Event.md)
 - [ExtraCurrency](docs/ExtraCurrency.md)
 - [ExtraCurrencyTransferAction](docs/ExtraCurrencyTransferAction.md)
 - [FoundAccounts](docs/FoundAccounts.md)
 - [FoundAccountsAddressesInner](docs/FoundAccountsAddressesInner.md)
 - [GasLimitPrices](docs/GasLimitPrices.md)
 - [GaslessConfig](docs/GaslessConfig.md)
 - [GaslessConfigGasJettonsInner](docs/GaslessConfigGasJettonsInner.md)
 - [GaslessEstimateRequest](docs/GaslessEstimateRequest.md)
 - [GaslessEstimateRequestMessagesInner](docs/GaslessEstimateRequestMessagesInner.md)
 - [GaslessSendRequest](docs/GaslessSendRequest.md)
 - [GetAccountDiff200Response](docs/GetAccountDiff200Response.md)
 - [GetAccountInfoByStateInitRequest](docs/GetAccountInfoByStateInitRequest.md)
 - [GetAccountPublicKey200Response](docs/GetAccountPublicKey200Response.md)
 - [GetAccountsRequest](docs/GetAccountsRequest.md)
 - [GetAllRawShardsInfo200Response](docs/GetAllRawShardsInfo200Response.md)
 - [GetChartRates200Response](docs/GetChartRates200Response.md)
 - [GetInscriptionOpTemplate200Response](docs/GetInscriptionOpTemplate200Response.md)
 - [GetMarketsRates200Response](docs/GetMarketsRates200Response.md)
 - [GetOutMsgQueueSizes200Response](docs/GetOutMsgQueueSizes200Response.md)
 - [GetOutMsgQueueSizes200ResponseShardsInner](docs/GetOutMsgQueueSizes200ResponseShardsInner.md)
 - [GetRates200Response](docs/GetRates200Response.md)
 - [GetRawAccountState200Response](docs/GetRawAccountState200Response.md)
 - [GetRawBlockProof200Response](docs/GetRawBlockProof200Response.md)
 - [GetRawBlockProof200ResponseStepsInner](docs/GetRawBlockProof200ResponseStepsInner.md)
 - [GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkBack](docs/GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkBack.md)
 - [GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForward](docs/GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForward.md)
 - [GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForwardSignatures](docs/GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForwardSignatures.md)
 - [GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForwardSignaturesSignaturesInner](docs/GetRawBlockProof200ResponseStepsInnerLiteServerBlockLinkForwardSignaturesSignaturesInner.md)
 - [GetRawBlockchainBlock200Response](docs/GetRawBlockchainBlock200Response.md)
 - [GetRawBlockchainBlockHeader200Response](docs/GetRawBlockchainBlockHeader200Response.md)
 - [GetRawBlockchainBlockState200Response](docs/GetRawBlockchainBlockState200Response.md)
 - [GetRawConfig200Response](docs/GetRawConfig200Response.md)
 - [GetRawListBlockTransactions200Response](docs/GetRawListBlockTransactions200Response.md)
 - [GetRawListBlockTransactions200ResponseIdsInner](docs/GetRawListBlockTransactions200ResponseIdsInner.md)
 - [GetRawMasterchainInfo200Response](docs/GetRawMasterchainInfo200Response.md)
 - [GetRawMasterchainInfoExt200Response](docs/GetRawMasterchainInfoExt200Response.md)
 - [GetRawShardBlockProof200Response](docs/GetRawShardBlockProof200Response.md)
 - [GetRawShardBlockProof200ResponseLinksInner](docs/GetRawShardBlockProof200ResponseLinksInner.md)
 - [GetRawShardInfo200Response](docs/GetRawShardInfo200Response.md)
 - [GetRawTime200Response](docs/GetRawTime200Response.md)
 - [GetRawTransactions200Response](docs/GetRawTransactions200Response.md)
 - [GetStakingPoolHistory200Response](docs/GetStakingPoolHistory200Response.md)
 - [GetStakingPoolInfo200Response](docs/GetStakingPoolInfo200Response.md)
 - [GetStakingPools200Response](docs/GetStakingPools200Response.md)
 - [GetStorageProviders200Response](docs/GetStorageProviders200Response.md)
 - [GetTonConnectPayload200Response](docs/GetTonConnectPayload200Response.md)
 - [ImagePreview](docs/ImagePreview.md)
 - [InitStateRaw](docs/InitStateRaw.md)
 - [InlineObject](docs/InlineObject.md)
 - [InscriptionBalance](docs/InscriptionBalance.md)
 - [InscriptionBalances](docs/InscriptionBalances.md)
 - [InscriptionMintAction](docs/InscriptionMintAction.md)
 - [InscriptionTransferAction](docs/InscriptionTransferAction.md)
 - [JettonBalance](docs/JettonBalance.md)
 - [JettonBalanceLock](docs/JettonBalanceLock.md)
 - [JettonBridgeParams](docs/JettonBridgeParams.md)
 - [JettonBridgePrices](docs/JettonBridgePrices.md)
 - [JettonBurnAction](docs/JettonBurnAction.md)
 - [JettonHolders](docs/JettonHolders.md)
 - [JettonHoldersAddressesInner](docs/JettonHoldersAddressesInner.md)
 - [JettonInfo](docs/JettonInfo.md)
 - [JettonMetadata](docs/JettonMetadata.md)
 - [JettonMintAction](docs/JettonMintAction.md)
 - [JettonPreview](docs/JettonPreview.md)
 - [JettonQuantity](docs/JettonQuantity.md)
 - [JettonSwapAction](docs/JettonSwapAction.md)
 - [JettonTransferAction](docs/JettonTransferAction.md)
 - [JettonTransferPayload](docs/JettonTransferPayload.md)
 - [JettonVerificationType](docs/JettonVerificationType.md)
 - [Jettons](docs/Jettons.md)
 - [JettonsBalances](docs/JettonsBalances.md)
 - [MarketTonRates](docs/MarketTonRates.md)
 - [Message](docs/Message.md)
 - [MessageConsequences](docs/MessageConsequences.md)
 - [Method](docs/Method.md)
 - [MethodExecutionResult](docs/MethodExecutionResult.md)
 - [MisbehaviourPunishmentConfig](docs/MisbehaviourPunishmentConfig.md)
 - [ModelError](docs/ModelError.md)
 - [MsgForwardPrices](docs/MsgForwardPrices.md)
 - [Multisig](docs/Multisig.md)
 - [MultisigOrder](docs/MultisigOrder.md)
 - [Multisigs](docs/Multisigs.md)
 - [NftCollection](docs/NftCollection.md)
 - [NftCollections](docs/NftCollections.md)
 - [NftItem](docs/NftItem.md)
 - [NftItemCollection](docs/NftItemCollection.md)
 - [NftItemTransferAction](docs/NftItemTransferAction.md)
 - [NftItems](docs/NftItems.md)
 - [NftPurchaseAction](docs/NftPurchaseAction.md)
 - [Oracle](docs/Oracle.md)
 - [OracleBridgeParams](docs/OracleBridgeParams.md)
 - [PoolImplementation](docs/PoolImplementation.md)
 - [PoolImplementationType](docs/PoolImplementationType.md)
 - [PoolInfo](docs/PoolInfo.md)
 - [Price](docs/Price.md)
 - [RawBlockchainConfig](docs/RawBlockchainConfig.md)
 - [ReducedBlock](docs/ReducedBlock.md)
 - [ReducedBlocks](docs/ReducedBlocks.md)
 - [Refund](docs/Refund.md)
 - [Risk](docs/Risk.md)
 - [Sale](docs/Sale.md)
 - [SendBlockchainMessageRequest](docs/SendBlockchainMessageRequest.md)
 - [SendRawMessage200Response](docs/SendRawMessage200Response.md)
 - [SendRawMessageRequest](docs/SendRawMessageRequest.md)
 - [Seqno](docs/Seqno.md)
 - [ServiceStatus](docs/ServiceStatus.md)
 - [SignRawMessage](docs/SignRawMessage.md)
 - [SignRawParams](docs/SignRawParams.md)
 - [SizeLimitsConfig](docs/SizeLimitsConfig.md)
 - [SmartContractAction](docs/SmartContractAction.md)
 - [Source](docs/Source.md)
 - [SourceFile](docs/SourceFile.md)
 - [StateInit](docs/StateInit.md)
 - [StoragePhase](docs/StoragePhase.md)
 - [StorageProvider](docs/StorageProvider.md)
 - [Subscription](docs/Subscription.md)
 - [SubscriptionAction](docs/SubscriptionAction.md)
 - [Subscriptions](docs/Subscriptions.md)
 - [TokenRates](docs/TokenRates.md)
 - [TonConnectProof200Response](docs/TonConnectProof200Response.md)
 - [TonConnectProofRequest](docs/TonConnectProofRequest.md)
 - [TonConnectProofRequestProof](docs/TonConnectProofRequestProof.md)
 - [TonConnectProofRequestProofDomain](docs/TonConnectProofRequestProofDomain.md)
 - [TonTransferAction](docs/TonTransferAction.md)
 - [Trace](docs/Trace.md)
 - [TraceID](docs/TraceID.md)
 - [TraceIDs](docs/TraceIDs.md)
 - [Transaction](docs/Transaction.md)
 - [TransactionType](docs/TransactionType.md)
 - [Transactions](docs/Transactions.md)
 - [TrustType](docs/TrustType.md)
 - [TvmStackRecord](docs/TvmStackRecord.md)
 - [UnSubscriptionAction](docs/UnSubscriptionAction.md)
 - [Validator](docs/Validator.md)
 - [Validators](docs/Validators.md)
 - [ValidatorsSet](docs/ValidatorsSet.md)
 - [ValidatorsSetListInner](docs/ValidatorsSetListInner.md)
 - [ValueFlow](docs/ValueFlow.md)
 - [ValueFlowJettonsInner](docs/ValueFlowJettonsInner.md)
 - [WalletDNS](docs/WalletDNS.md)
 - [WithdrawStakeAction](docs/WithdrawStakeAction.md)
 - [WithdrawStakeRequestAction](docs/WithdrawStakeRequestAction.md)
 - [WorkchainDescr](docs/WorkchainDescr.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization

Endpoints do not require authorization.


# How do I migrate from the Swift 5 generator to the swift 6 generator?

https://openapi-generator.tech/docs/faq-generators#how-do-i-migrate-from-the-swift-5-generator-to-the-swift-6-generator

### How do I implement bearer token authentication with URLSession on the Swift 5 API client?

https://openapi-generator.tech/docs/faq-generators#how-do-i-implement-bearer-token-authentication-with-urlsession-on-the-swift-5-api-client

## Author

support@tonkeeper.com
