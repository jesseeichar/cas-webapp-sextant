#!/bin/sh

DEBUG="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5000"
MEMORY="-XX:MaxPermSize=256m -Xmx1024M"
TRUST_STORE="-Djavax.net.ssl.trustStore=keystore.jks -Djavax.net.ssl.trustStorePassword=password"
export MAVEN_OPTS="$JREBEL_OPTS $DEBUG $OVERRIDES $MEMORY $DIRS -Dfile.encoding=UTF8 $TRUST_STORE"

mvn jetty:run -Penv-dev,widgets $@