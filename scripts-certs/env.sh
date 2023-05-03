#!/bin/bash

export CN=quay.factory.promnet.com.sv
export DNAME="CN=${CN}, OU=IT, O=Banco Promerica S.A., L=Antiguo Cuscatlan, ST=La Libertad, C=SV"
export ALIAS=jetty
export OPENSHIFT_IP=10.5.149.231
export EXT="SAN=IP:${OPENSHIFT_IP},DNS:${CN},EMAIL:julian.rivera@promerica.com.sv"
export INSTALL_DIR="/opt/sonatype/nexus/etc/ssl"


