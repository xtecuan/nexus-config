#!/bin/bash

export KAPP_HOME=$(dirname $(realpath $0))

source ${KAPP_HOME}/env.sh 

keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "${DNAME}" -alias ${ALIAS} -ext "${EXT}" -validity 730  -keystore ${INSTALL_DIR}/keystore.jks

