#!/bin/sh

set -eu

cake --version

cake $CAKE_SCRIPT --target=$*

exit $?
