#!/bin/sh
JAVA_OPTS="$JAVA_OPTS -Dtsp-source=file:/dss/tsp-config.xml -Dproxy.http.enabled=true -Dproxy.http.host=proxy-balancer -Dproxy.http.port=5000 -Dproxy.https.enabled=true -Dproxy.https.host=proxy-balancer -Dproxy.https.port=5000"
