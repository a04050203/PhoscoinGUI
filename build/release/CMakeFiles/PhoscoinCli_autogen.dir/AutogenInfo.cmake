# Meta
set(AM_MULTI_CONFIG "SINGLE")
# Directories and files
set(AM_CMAKE_BINARY_DIR "/home/runa/Desktop/PhoscoinGui/build/release/")
set(AM_CMAKE_SOURCE_DIR "/home/runa/Desktop/PhoscoinGui/")
set(AM_CMAKE_CURRENT_SOURCE_DIR "/home/runa/Desktop/PhoscoinGui/")
set(AM_CMAKE_CURRENT_BINARY_DIR "/home/runa/Desktop/PhoscoinGui/build/release/")
set(AM_CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE "")
set(AM_BUILD_DIR "/home/runa/Desktop/PhoscoinGui/build/release/PhoscoinCli_autogen")
set(AM_SOURCES "/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/BlockchainExplorer/BlockchainExplorer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/BlockchainExplorer/BlockchainExplorerDataBuilder.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/BlockchainExplorer/BlockchainExplorerErrors.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/Base58.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/CommandLine.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/ConsoleTools.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/JsonValue.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/MemoryInputStream.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/PathTools.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/StdInputStream.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/StdOutputStream.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/StreamTools.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/StringOutputStream.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/StringTools.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/StringView.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/Util.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Common/VectorOutputStream.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/Account.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/BlockIndex.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/Blockchain.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/BlockchainIndices.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/BlockchainMessages.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/Checkpoints.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/Core.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/CoreConfig.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/CryptoNoteBasic.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/CryptoNoteBasicImpl.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/CryptoNoteFormatUtils.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/CryptoNoteSerialization.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/CryptoNoteTools.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/Currency.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/DepositIndex.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/Difficulty.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/IBlock.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/Miner.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/MinerConfig.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/Transaction.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/TransactionExtra.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/TransactionPool.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/TransactionPrefixImpl.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteCore/TransactionUtils.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/CryptoNoteProtocol/CryptoNoteProtocolHandler.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/HTTP/HttpParser.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/HTTP/HttpParserErrorCodes.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/HTTP/HttpRequest.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/HTTP/HttpResponse.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/InProcessNode/InProcessNode.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/InProcessNode/InProcessNodeErrors.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/CommonLogger.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/ConsoleLogger.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/FileLogger.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/ILogger.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/LoggerGroup.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/LoggerManager.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/LoggerMessage.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/LoggerRef.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Logging/StreamLogger.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/NodeRpcProxy/NodeErrors.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/NodeRpcProxy/NodeRpcProxy.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/P2p/LevinProtocol.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/P2p/NetNode.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/P2p/NetNodeConfig.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/P2p/PeerListManager.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/Dispatcher.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/ErrorMessage.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/Ipv4Resolver.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/TcpConnection.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/TcpConnector.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/TcpListener.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/Timer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Rpc/HttpClient.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Rpc/JsonRpc.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Serialization/BinaryInputStreamSerializer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Serialization/BinaryOutputStreamSerializer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Serialization/JsonInputValueSerializer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Serialization/JsonOutputStreamSerializer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Serialization/KVBinaryInputStreamSerializer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Serialization/KVBinaryOutputStreamSerializer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Serialization/SerializationOverloads.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/System/ContextGroup.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/System/Event.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/System/EventLock.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/System/InterruptedException.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/System/Ipv4Address.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/System/TcpStream.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Transfers/BlockchainSynchronizer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Transfers/SynchronizationState.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Transfers/TransfersConsumer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Transfers/TransfersContainer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Transfers/TransfersSubscription.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Transfers/TransfersSynchronizer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Wallet/LegacyKeysImporter.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Wallet/WalletAsyncContextCounter.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Wallet/WalletErrors.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/WalletLegacy/KeysStorage.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/WalletLegacy/WalletHelper.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/WalletLegacy/WalletLegacy.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/WalletLegacy/WalletLegacySerialization.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/WalletLegacy/WalletLegacySerializer.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/WalletLegacy/WalletTransactionSender.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/WalletLegacy/WalletUnconfirmedTransactions.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/WalletLegacy/WalletUserTransactionsCache.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/crypto/crypto.cpp;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/crypto/slow-hash.cpp")
set(AM_HEADERS "/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/Dispatcher.h;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/ErrorMessage.h;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/Future.h;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/Ipv4Resolver.h;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/TcpConnection.h;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/TcpConnector.h;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/TcpListener.h;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux/System/Timer.h")
# Qt environment
set(AM_QT_VERSION_MAJOR "5")
set(AM_QT_VERSION_MINOR "5")
set(AM_QT_MOC_EXECUTABLE "/usr/lib/x86_64-linux-gnu/qt5/bin/moc")
set(AM_QT_UIC_EXECUTABLE )
set(AM_QT_RCC_EXECUTABLE )
# MOC settings
set(AM_MOC_SKIP "/home/runa/Desktop/PhoscoinGui/build/release/PhoscoinCli_autogen/mocs_compilation.cpp;/home/runa/Desktop/PhoscoinGui/build/release/phoscoin_autogen/mocs_compilation.cpp")
set(AM_MOC_DEFINITIONS "GIT_REVISION=\"b53aed4\";VERSION=\"1.0.3\";_GNU_SOURCE")
set(AM_MOC_INCLUDES "/home/runa/Desktop/PhoscoinGui/build/release/PhoscoinCli_autogen/include;/home/runa/Desktop/PhoscoinGui/build/release;/home/runa/Desktop/PhoscoinGui;/home/runa/Desktop/PhoscoinGui/src;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/external;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/include;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src;/home/runa/Desktop/PhoscoinGui/PhoscoinCli/src/Platform/Linux;/usr/include")
set(AM_MOC_OPTIONS "")
set(AM_MOC_RELAXED_MODE "FALSE")
set(AM_MOC_MACRO_NAMES "Q_OBJECT;Q_GADGET;Q_NAMESPACE")
set(AM_MOC_DEPEND_FILTERS "")
set(AM_MOC_PREDEFS_CMD )
# UIC settings
set(AM_UIC_SKIP )
set(AM_UIC_TARGET_OPTIONS )
set(AM_UIC_OPTIONS_FILES )
set(AM_UIC_OPTIONS_OPTIONS )
set(AM_UIC_SEARCH_PATHS )
# RCC settings
set(AM_RCC_SOURCES )
set(AM_RCC_BUILDS )
set(AM_RCC_OPTIONS )
set(AM_RCC_INPUTS )
# Configurations options
set(AM_CONFIG_SUFFIX_Release "_Release")