#!/bin/bash

if [ $# -ne 1 ];
then
	echo "Usage: $0 <mcf|omnetpp|...>"
	exit 1
fi

CALLEE_DIR=`dirname $0`
pushd $CALLEE_DIR > /dev/null

SPEC_DIR=spec_src

pushd $SPEC_DIR > /dev/null
source ./shrc
cp config/Example-gcc-linux-x86.cfg ./config/config.cfg

logfile=$(runcpu --config=config --noreportable --iterations=1 --action=onlyrun --size=ref $1 | tee /dev/stdout | grep "The log for this run is in " | awk '{print $8}')
cat $logfile

popd > /dev/null

popd > /dev/null
