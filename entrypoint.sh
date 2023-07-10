#!/bin/sh -l
set -e

APP_PATH="/usr/local/kclvm/bin/kclvm_cli"

echo "kcl cli version:"
$APP_PATH version

version=$1
subcommand=$2
arguments=$3

params=$subcommand
if [ -n "$arguments" ]; then
    params="$params $arguments"
fi
$APP_PATH $params
