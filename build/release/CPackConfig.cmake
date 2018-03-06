# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_BINARY_7Z "")
SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_FREEBSD "")
SET(CPACK_BINARY_IFW "")
SET(CPACK_BINARY_NSIS "")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_PRODUCTBUILD "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TXZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_BUILD_SOURCE_DIRS "/home/runa/Desktop/PhoscoinGui;/home/runa/Desktop/PhoscoinGui/build/release")
SET(CPACK_CMAKE_GENERATOR "Unix Makefiles")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Phoscoin PSC wallet
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
SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "Phoscoin Foundation <henry.l@phoscoin.com>")
SET(CPACK_DEBIAN_PACKAGE_NAME "phoscoin")
SET(CPACK_DEBIAN_PACKAGE_SECTION "Office")
SET(CPACK_DEBIAN_PACKAGE_SHLIBDEPS "ON")
SET(CPACK_GENERATOR "DEB")
SET(CPACK_INSTALL_CMAKE_PROJECTS "/home/runa/Desktop/PhoscoinGui/build/release;phoscoin;ALL;/")
SET(CPACK_INSTALL_PREFIX "/usr/local")
SET(CPACK_MODULE_PATH "")
SET(CPACK_NSIS_DISPLAY_NAME "phoscoin 1.0.3")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_PACKAGE_NAME "phoscoin 1.0.3")
SET(CPACK_OUTPUT_CONFIG_FILE "/home/runa/Desktop/PhoscoinGui/build/release/CPackConfig.cmake")
SET(CPACK_PACKAGE_CONTACT "https://nur1labs.net/")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "/home/runa/Desktop/PhoscoinGui/README.md")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "phoscoin built using CMake")
SET(CPACK_PACKAGE_FILE_NAME "phoscoin-1.0.3-.amd64")
SET(CPACK_PACKAGE_ICON "src/images/cryptonote.png")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "phoscoin 1.0.3")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "phoscoin 1.0.3")
SET(CPACK_PACKAGE_NAME "phoscoin")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "Phoscoin Foundation")
SET(CPACK_PACKAGE_VERSION "1.0.3")
SET(CPACK_PACKAGE_VERSION_MAJOR "0")
SET(CPACK_PACKAGE_VERSION_MINOR "1")
SET(CPACK_PACKAGE_VERSION_PATCH "1")
SET(CPACK_RESOURCE_FILE_LICENSE "/home/runa/Desktop/PhoscoinGui/LICENSE")
SET(CPACK_RESOURCE_FILE_README "/usr/local/share/cmake-3.10/Templates/CPack.GenericDescription.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "/usr/local/share/cmake-3.10/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_7Z "")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/runa/Desktop/PhoscoinGui/build/release/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_RPM "OFF")
SET(CPACK_SOURCE_TBZ2 "ON")
SET(CPACK_SOURCE_TGZ "ON")
SET(CPACK_SOURCE_TXZ "ON")
SET(CPACK_SOURCE_TZ "ON")
SET(CPACK_SOURCE_ZIP "OFF")
SET(CPACK_STRIP_FILES "ON")
SET(CPACK_SYSTEM_NAME "amd64")
SET(CPACK_TOPLEVEL_TAG "amd64")
SET(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/runa/Desktop/PhoscoinGui/build/release/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
