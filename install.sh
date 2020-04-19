#!/bin/bash

CALLEE_DIR=`dirname $0`
pushd $CALLEE_DIR > /dev/null

SPEC_DIR=spec_src

pushd $SPEC_DIR > /dev/null

./install.sh

popd > /dev/null

popd > /dev/null
