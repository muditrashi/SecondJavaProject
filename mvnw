#!/usr/bin/env bash
set -e
WRAPPER_DIR=".mvn/wrapper"
JAR="$WRAPPER_DIR/maven-wrapper.jar"
if [ ! -f "$JAR" ]; then
  echo "Downloading maven-wrapper.jar..."
  mkdir -p "$WRAPPER_DIR"
  curl -sSL -o "$JAR" "https://repo1.maven.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar"
fi
java -jar "$JAR" "$@"
