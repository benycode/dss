#!/bin/sh
JAVA_OPTS="$JAVA_OPTS -Dtsp-source=file:/dss/tsp-config.xml -Dhttps.proxyHost=proxy-balancer -Dhttps.proxyPort=5000 -Dhttp.proxyHost=proxy-balancer -Dhttp.proxyPort=5000"
