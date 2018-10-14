#!/bin/sh

MODULE=v2ray
VERSION=1.4
TITLE="V2Ray"
DESCRIPTION="模块化的代理软件包"
HOME_URL=Module_v2ray.asp
CHANGELOG="修复iptables重复加载"

# Check and include base
DIR="$( cd "$( dirname "$BASH_SOURCE[0]" )" && pwd )"

# now include build_base.sh
. $DIR/../softcenter/build_base.sh

# change to module directory
cd $DIR

# build bin
sh $DIR/build/build v2ray

# do something here

do_build_result

sh backup.sh $MODULE
