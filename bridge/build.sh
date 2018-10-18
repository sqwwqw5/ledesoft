#!/bin/sh

MODULE=bridge
VERSION=0.1
TITLE=透明网桥
DESCRIPTION=无感知的透明防火墙
HOME_URL=Module_bridge.asp

# Check and include base
DIR="$( cd "$( dirname "$BASH_SOURCE[0]" )" && pwd )"

# now include build_base.sh
. $DIR/../softcenter/build_base.sh

# build bin
sh $DIR/build/build $MODULE

# change to module directory
cd $DIR

# do something here
do_build_result

sh backup.sh $MODULE
