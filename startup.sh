#!/bin/sh
set -e
echo "`/bin/sh /dss/apache-tomcat-8.5.61/bin/catalina.sh run`"
exec "$@"