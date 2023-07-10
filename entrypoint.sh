#!/bin/sh -l
set -e

APP_PATH="/kclvm/bin/kclvm_cli"

echo "kcl component version is as follows:"
$APP_PATH version

version=$1
subcommand=$2
arguments=$3

if [ -n "$subcommand" ]; then
    params=$subcommand
    if [ -n "$arguments" ]; then
        params="$params $arguments"
    fi
    $APP_PATH $params
fi
