#!/bin/sh

cd $(dirname "$0")
cd build/install

CF_SOURCE="http://coldfusion.virusx.rocks"

if [ ! -f "ColdFusion_10_WWEJ_linux64.bin" ]
then
	wget $CF_SOURCE/ColdFusion_10_WWEJ_linux64.bin
	chmod 755 ColdFusion_10_WWEJ_linux64.bin
fi

if [ ! -f "hotfix_023.jar" ]
then
	wget $CF_SOURCE/hotfix_023.jar
	chmod 755 hotfix_023.jar
fi

if [ ! -f "cf10_mdt_updt.jar" ]
then
	wget $CF_SOURCE/cf10_mdt_updt.jar
	chmod 755 cf10_mdt_updt.jar
fi
