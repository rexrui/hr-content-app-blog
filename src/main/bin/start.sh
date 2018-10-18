#!/bin/sh

if [ "$JAVA_HOME" = "" ]; then
  echo "Error: JAVA_HOME is not set."
  exit 1
fi

JAVA=${JAVA_HOME}/bin/java
HEAP_OPTS="-Xmx2048m"

nohup "$JAVA" -Djava.awt.headless=true ${HEAP_OPTS} -jar ./idt-banana-app-label.jar > /dev/null 2>&1 &