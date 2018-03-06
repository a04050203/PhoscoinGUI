cmake_minimum_required(VERSION 2.8)

include(PSC.cmake)
include(QREncode.cmake)

project(${CN_PROJECT_NAME})

execute_process(COMMAND git log -1 --pretty=format:%h
WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
OUTPUT_VARIABLE GIT_REVISION)

set(CRYPTONOTE_LIB PhoscoinCli)
set (CMAKE_PREFIX_PATH "C:\\Qt\\Qt5.6.0\\5.6\\msvc2013_64\\")

include_directories(${CMAKE_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}
    src
    PhoscoinCli/external
    PhoscoinCli/include
    PhoscoinCli/src)

find_package(Qt5Gui REQUIRED)
find_package(Qt5Widgets REQUIRED)
find_package(Qt5Network REQUIRED)

set(Boost_USE_STATIC_LIBS ON)
if(WIN32)
  set(Boost_USE_STATIC_RUNTIME OFF)
else(WIN32)
  set(Boost_USE_STATIC_RUNTIME ON)
endif(WIN32)

find_package(Boost 1.55 REQUIRED COMPONENTS date_time filesystem program_options regex serialization system thread chrono)
if ((${Boost_MAJOR_VERSION} EQUAL 1) AND (${Boost_MINOR_VERSION} EQUAL 54))
	message(SEND_ERROR "Boost version 1.54 is unsupported, more details are available here http://goo.gl/RrCFmA")
endif ()

include_directories(${Boost_INCLUDE_DIRS})
link_directories(${Boost_LIBRARY_DIRS})

set(VERSION "")
configure_file("PhoscoinCli/src/version.h.in" "version.h")
configure_file("src/CryptoNoteWalletConfig.h.in" "CryptoNoteWalletConfig.h")

add_definitions(-DVERSION=\"${CN_VERSION}\")
add_definitions(-DGIT_REVISION=\"${GIT_REVISION}\")

set(CMAKE_AUTOMOC ON)

set(CRYPTONOTE_SOURCES
  PhoscoinCli/external/miniupnpc/connecthostport.c
  PhoscoinCli/external/miniupnpc/igd_desc_parse.c
  PhoscoinCli/external/miniupnpc/minisoap.c
  PhoscoinCli/external/miniupnpc/miniupnpc.c
  PhoscoinCli/external/miniupnpc/miniwget.c
  PhoscoinCli/external/miniupnpc/minixml.c
  PhoscoinCli/external/miniupnpc/portlistingparse.c
  PhoscoinCli/external/miniupnpc/receivedata.c
  PhoscoinCli/external/miniupnpc/upnpcommands.c
  PhoscoinCli/external/miniupnpc/upnpreplyparse.c
  PhoscoinCli/src/Common/Base58.cpp
  PhoscoinCli/src/Common/CommandLine.cpp
  PhoscoinCli/src/Common/Util.cpp
  PhoscoinCli/src/Common/StringTools.cpp
  PhoscoinCli/src/Common/JsonValue.cpp
  PhoscoinCli/src/Common/ConsoleTools.cpp
  PhoscoinCli/src/Common/MemoryInputStream.cpp
  PhoscoinCli/src/Common/PathTools.cpp
  PhoscoinCli/src/Common/StdInputStream.cpp
  PhoscoinCli/src/Common/StdOutputStream.cpp
  PhoscoinCli/src/Common/StreamTools.cpp
  PhoscoinCli/src/Common/StringOutputStream.cpp
  PhoscoinCli/src/Common/StringView.cpp
  PhoscoinCli/src/Common/VectorOutputStream.cpp
  PhoscoinCli/src/crypto/blake256.c
  PhoscoinCli/src/crypto/chacha.c
  PhoscoinCli/src/crypto/crypto-ops-data.c
  PhoscoinCli/src/crypto/crypto-ops.c
  PhoscoinCli/src/crypto/crypto.cpp
  PhoscoinCli/src/crypto/groestl.c
  PhoscoinCli/src/crypto/hash-extra-blake.c
  PhoscoinCli/src/crypto/hash-extra-groestl.c
  PhoscoinCli/src/crypto/hash-extra-jh.c
  PhoscoinCli/src/crypto/hash-extra-skein.c
  PhoscoinCli/src/crypto/hash.c
  PhoscoinCli/src/crypto/jh.c
  PhoscoinCli/src/crypto/keccak.c
  PhoscoinCli/src/crypto/oaes_lib.c
  PhoscoinCli/src/crypto/random.c
  PhoscoinCli/src/crypto/skein.c
  PhoscoinCli/src/crypto/slow-hash.c
  PhoscoinCli/src/crypto/slow-hash.cpp
  PhoscoinCli/src/crypto/tree-hash.c
  PhoscoinCli/src/CryptoNoteCore/BlockchainIndices.cpp
  PhoscoinCli/src/CryptoNoteCore/BlockchainMessages.cpp
  PhoscoinCli/src/CryptoNoteCore/BlockIndex.cpp
  PhoscoinCli/src/CryptoNoteCore/CoreConfig.cpp
  PhoscoinCli/src/CryptoNoteCore/CryptoNoteBasic.cpp
  PhoscoinCli/src/CryptoNoteCore/CryptoNoteTools.cpp
  PhoscoinCli/src/CryptoNoteCore/Currency.cpp
  PhoscoinCli/src/CryptoNoteCore/DepositIndex.cpp
  PhoscoinCli/src/CryptoNoteCore/MinerConfig.cpp
  PhoscoinCli/src/CryptoNoteCore/Transaction.cpp
  PhoscoinCli/src/CryptoNoteCore/Account.cpp
  PhoscoinCli/src/CryptoNoteCore/Blockchain.cpp
  PhoscoinCli/src/CryptoNoteCore/Checkpoints.cpp
  PhoscoinCli/src/CryptoNoteCore/CryptoNoteBasicImpl.cpp
  PhoscoinCli/src/CryptoNoteCore/Core.cpp
  PhoscoinCli/src/CryptoNoteCore/CryptoNoteFormatUtils.cpp
  PhoscoinCli/src/CryptoNoteCore/CryptoNoteSerialization.cpp
  PhoscoinCli/src/CryptoNoteCore/Difficulty.cpp
  PhoscoinCli/src/CryptoNoteCore/IBlock.cpp
  PhoscoinCli/src/CryptoNoteCore/Miner.cpp
  PhoscoinCli/src/CryptoNoteCore/TransactionExtra.cpp
  PhoscoinCli/src/CryptoNoteCore/TransactionPool.cpp
  PhoscoinCli/src/CryptoNoteCore/TransactionPrefixImpl.cpp
  PhoscoinCli/src/CryptoNoteCore/TransactionUtils.cpp
  PhoscoinCli/src/InProcessNode/InProcessNode.cpp
  PhoscoinCli/src/InProcessNode/InProcessNodeErrors.cpp
  PhoscoinCli/src/NodeRpcProxy/NodeErrors.cpp
  PhoscoinCli/src/NodeRpcProxy/NodeRpcProxy.cpp
  PhoscoinCli/src/P2p/NetNodeConfig.cpp
  PhoscoinCli/src/Serialization/BinaryInputStreamSerializer.cpp
  PhoscoinCli/src/Serialization/BinaryOutputStreamSerializer.cpp
  PhoscoinCli/src/Serialization/JsonInputValueSerializer.cpp
  PhoscoinCli/src/Serialization/JsonOutputStreamSerializer.cpp
  PhoscoinCli/src/Serialization/KVBinaryInputStreamSerializer.cpp
  PhoscoinCli/src/Serialization/KVBinaryOutputStreamSerializer.cpp
  PhoscoinCli/src/Serialization/SerializationOverloads.cpp
  PhoscoinCli/src/Transfers/BlockchainSynchronizer.cpp
  PhoscoinCli/src/Transfers/SynchronizationState.cpp
  PhoscoinCli/src/Transfers/TransfersConsumer.cpp
  PhoscoinCli/src/Transfers/TransfersContainer.cpp
  PhoscoinCli/src/Transfers/TransfersSubscription.cpp
  PhoscoinCli/src/Transfers/TransfersSynchronizer.cpp
  PhoscoinCli/src/Wallet/LegacyKeysImporter.cpp
  PhoscoinCli/src/Wallet/WalletAsyncContextCounter.cpp
  PhoscoinCli/src/Wallet/WalletErrors.cpp
  PhoscoinCli/src/WalletLegacy/KeysStorage.cpp
  PhoscoinCli/src/WalletLegacy/WalletLegacy.cpp
  PhoscoinCli/src/WalletLegacy/WalletHelper.cpp
  PhoscoinCli/src/WalletLegacy/WalletLegacySerializer.cpp
  PhoscoinCli/src/WalletLegacy/WalletLegacySerialization.cpp
  PhoscoinCli/src/WalletLegacy/WalletTransactionSender.cpp
  PhoscoinCli/src/WalletLegacy/WalletUnconfirmedTransactions.cpp
  PhoscoinCli/src/WalletLegacy/WalletUserTransactionsCache.cpp
  PhoscoinCli/src/System/ContextGroup.cpp
  PhoscoinCli/src/System/Event.cpp
  PhoscoinCli/src/System/EventLock.cpp
  PhoscoinCli/src/System/InterruptedException.cpp
  PhoscoinCli/src/System/Ipv4Address.cpp
  PhoscoinCli/src/System/TcpStream.cpp
  PhoscoinCli/src/HTTP/HttpRequest.cpp
  PhoscoinCli/src/HTTP/HttpParser.cpp
  PhoscoinCli/src/HTTP/HttpParserErrorCodes.cpp
  PhoscoinCli/src/HTTP/HttpResponse.cpp
  PhoscoinCli/src/Rpc/HttpClient.cpp
  PhoscoinCli/src/Rpc/JsonRpc.cpp
  PhoscoinCli/src/P2p/NetNode.cpp
  PhoscoinCli/src/P2p/LevinProtocol.cpp
  PhoscoinCli/src/P2p/NetNodeConfig.cpp
  PhoscoinCli/src/P2p/PeerListManager.cpp
  PhoscoinCli/src/CryptoNoteProtocol/CryptoNoteProtocolHandler.cpp
  PhoscoinCli/src/Logging/ILogger.cpp
  PhoscoinCli/src/Logging/LoggerGroup.cpp
  PhoscoinCli/src/Logging/CommonLogger.cpp
  PhoscoinCli/src/Logging/LoggerManager.cpp
  PhoscoinCli/src/Logging/FileLogger.cpp
  PhoscoinCli/src/Logging/StreamLogger.cpp
  PhoscoinCli/src/Logging/ConsoleLogger.cpp
  PhoscoinCli/src/Logging/LoggerMessage.cpp
  PhoscoinCli/src/Logging/LoggerRef.cpp
  PhoscoinCli/src/BlockchainExplorer/BlockchainExplorer.cpp
  PhoscoinCli/src/BlockchainExplorer/BlockchainExplorerDataBuilder.cpp
  PhoscoinCli/src/BlockchainExplorer/BlockchainExplorerErrors.cpp
)

file(GLOB_RECURSE SOURCES src/*.cpp)
file(GLOB_RECURSE HEADERS src/*.h)
file(GLOB_RECURSE FORMS src/gui/ui/*.ui)

set(QRC src/resources.qrc)

qt5_wrap_ui(UIS ${FORMS})
qt5_add_resources(RCC ${QRC})


if (WIN32)
  if (NOT MSVC)
	message(FATAL_ERROR "Only MSVC is supported on this platform")
  endif ()
  add_definitions(/D_CRT_SECURE_NO_WARNINGS /D_WIN32_WINNT=0x0600 /DSTATICLIB)
  include_directories(PhoscoinCli/src/platform/msc)

  set(PLATFORM_DIR Windows)
  set(BUILD_PLATFORM WIN32)
  set(BUILD_RESOURCES src/PSC.rc)
  set(QTMAIN Qt5::WinMain)

elseif (UNIX)
  set(CRYPTONOTE_SOURCES ${CRYPTONOTE_SOURCES} PhoscoinCli/external/miniupnpc/minissdpc.c)
  if (APPLE)
    enable_language(ASM)
    file(GLOB_RECURSE OBJC_SOURCES src/*.mm)
    set(SOURCES ${SOURCES} ${OBJC_SOURCES})
    set(PLATFORM_DIR OSX)
    set(MACOSX_BUNDLE_INFO_STRING "Phoscoin GUI")
    set(MACOSX_BUNDLE_LONG_VERSION_STRING "${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")
    set(MACOSX_BUNDLE_BUNDLE_NAME Phoscoin)
    set(MACOSX_BUNDLE_SHORT_VERSION_STRING "${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")
    set(MACOSX_BUNDLE_BUNDLE_VERSION "$${VERSION_VERSION}.${VERSION_MINOR}.${VERSION_PATCH}")

    find_package(Qt5PrintSupport REQUIRED)

    include_directories(/usr/include/malloc)

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -maes -std=c++11 -stdlib=libc++")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11 -maes -D_DARWIN_C_SOURCE")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework Cocoa -framework OpenGL -framework CoreFoundation -framework Carbon -framework IOKit -L/usr/lib")

    set(MACOSX_BUNDLE_ICON_FILE cryptonote.icns)
    set(APPLICATION_ICON src/images/cryptonote.icns)
    set_source_files_properties(${APPLICATION_ICON} PROPERTIES MACOSX_PACKAGE_LOCATION "Resources")

    set(BUILD_PLATFORM MACOSX_BUNDLE)
    set(BUILD_RESOURCES ${APPLICATION_ICON})
	
    GET_TARGET_PROPERTY(QT_LIB_DIR "${Qt5Widgets_LIBRARIES}" LOCATION)
    GET_FILENAME_COMPONENT(QT_LIB_DIR "${QT_LIB_DIR}" PATH)
  else(APPLE)
    set(PLATFORM_DIR Linux)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -maes -std=c++11")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -maes -std=c11")
  endif (APPLE)
endif ()

include_directories(PhoscoinCli/src/Platform/${PLATFORM_DIR})
file(GLOB PLATFORM_SOURCES PhoscoinCli/src/Platform/${PLATFORM_DIR}/System/*)
set(CRYPTONOTE_SOURCES ${CRYPTONOTE_SOURCES} ${PLATFORM_SOURCES})

add_library(${CRYPTONOTE_LIB} STATIC ${CRYPTONOTE_SOURCES})
set_target_properties(${CRYPTONOTE_LIB} PROPERTIES COMPILE_DEFINITIONS _GNU_SOURCE)
target_link_libraries(${CRYPTONOTE_LIB} ${Boost_LIBRARIES})

add_executable(${PROJECT_NAME} ${BUILD_PLATFORM} ${BUILD_RESOURCES} ${SOURCES} ${HEADERS} ${UIS} ${RCC})
set_target_properties(${PROJECT_NAME} PROPERTIES COMPILE_DEFINITIONS _GNU_SOURCE)
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES} ${QTMAIN} ${CRYPTONOTE_LIB} ${QRENCODE_LIB})

if (APPLE)
  qt5_use_modules(${PROJECT_NAME} PrintSupport)
elseif (UNIX)
  target_link_libraries(${PROJECT_NAME} -lpthread)
elseif (WIN32)
  target_link_libraries(${PROJECT_NAME} Imm32 Iphlpapi Winmm)
endif (APPLE)

qt5_use_modules(${PROJECT_NAME} Widgets Gui Network)

# Installation

set(CPACK_PACKAGE_NAME ${CN_PROJECT_NAME})
set(CPACK_PACKAGE_VERSION ${CN_VERSION})
set(CPACK_PACKAGE_VENDOR "Phoscoin Foundation")
set(CPACK_PACKAGE_CONTACT "https://nur1labs.net/")
set(CPACK_STRIP_FILES ON)
if (APPLE)
    set(CPACK_GENERATOR DragNDrop)
    install(TARGETS ${PROJECT_NAME} BUNDLE DESTINATION .)
    set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}.-${VERSION_RELEASE}")
elseif (UNIX)
    install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)
    install(FILES src/PSC.desktop.desktop DESTINATION share/applications)
    install(FILES src/images/cryptonote.png DESTINATION share/pixmaps RENAME wayang.png)
    install(FILES copyright DESTINATION share/doc/wayang)

	SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
	SET(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README.md")
	SET(CPACK_PACKAGE_ICON src/images/cryptonote.png)
	
    if (NOT PACKRPM)
        set(CPACK_GENERATOR DEB)
        set(CPACK_DEBIAN_PACKAGE_NAME ${CPACK_PACKAGE_NAME})
        set(CPACK_SYSTEM_NAME amd64)
        set(CPACK_DEBIAN_PACKAGE_MAINTAINER "${CPACK_PACKAGE_VENDOR} <henry.l@phoscoin.com>")
        set(CPACK_DEBIAN_PACKAGE_SECTION Office)
        set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
        set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Phoscoin PSC wallet
 Phoscoin is a decentrilized privacy protected peer-to-peer
 cryptocurrency and untraceable encrypted messaging system. Phoscoin is
 open-source; its design is public, nobody owns or controls Phoscoin and
 everyone can take part. Phoscoin is Smart, Fast And Easy Used.
 .
 Features of the wallet listed bellow:
 * Classic Bitcoin alike appearance in PhoscoinCli based cryptocurrency,
   made with QT and open-source.
 * Instant anonymous PSC transfers and transfers notifications
 * Instant untraceable encrypted messages transfers and notifications
 * Safe and secure, full Phoscoin network node in wallet, fast network
   syncronization.
 * Wallet encryption
 * Fast and hardware optimized
 * Open and easy. Private keys can be exported into other clients
 * Decreasing overload ico.")
set(CPACK_PACKAGE_FILE_NAME "${CPACK_DEBIAN_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-${VERSION_RELEASE}.${CPACK_SYSTEM_NAME}")
	else ()
        set(CPACK_GENERATOR RPM)
        set(CPACK_SYSTEM_NAME x86_64)
        set(CPACK_RPM_PACKAGE_RELEASE ${VERSION_RELEASE})
        set(CPACK_RPM_PACKAGE_LICENSE "GPL3")
        set(CPACK_RPM_PACKAGE_GROUP Office)
        set(CPACK_RPM_PACKAGE_REQUIRES "qt5-qtbase >= 5.3.2, qt5-qtbase-gui >= 5.3.2")
        set(CPACK_RPM_PACKAGE_SUMMARY "Phoscoin wallet")
        set(CPACK_RPM_PACKAGE_DESCRIPTION "Open-source Phoscoin GUI wallet
 Phoscoin is a decentrilized privacy protected peer-to-peer
 cryptocurrency and untraceable encrypted messaging system. Phoscoin is
 open-source; its design is public, nobody owns or controls Phoscoin and
 everyone can take part. Phoscoin is Smart, Realible And Faster

 Features of the Phoscoin wallet listed bellow:
 *Classic Bitcoin alike appearance in PhoscoinCli based cryptocurrency,
    made with QT and open-source.
 *Instant anonymous PSC transfers and transfers notifications
 *Instant untraceable encrypted messages transfers and notifications
 *Safe and secure, full Phoscoin network node in wallet, fast network
    syncronization.
 *Wallet encryption
 *Fast and hardware optimized
 *Open and easy. Private keys can be exported into other clients
 *Decreasing overload ico.")
set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}-${VERSION_RELEASE}.${CPACK_SYSTEM_NAME}")
    endif ()
elseif (WIN32)
  install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION .)
  set(CPACK_GENERATOR ZIP)
endif (APPLE)

include(CPack)
