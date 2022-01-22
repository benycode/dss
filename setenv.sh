#!/bin/sh
JAVA_OPTS="$JAVA_OPTS -Dtsp-source=file:/dss/tsp-config.xml -Djava.net.useSystemProxies=true -Dhttps.proxyHost=proxy-balancer -Dhttps.proxyPort=5000 -Dhttp.proxyHost=proxy-balancer -Dhttp.proxyPort=5000"
