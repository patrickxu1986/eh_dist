#!/usr/bin/env bash

echo "\n========================================================"
echo "[*] start pull custom docker image ..."
echo "========================================================\n"
docker pull xcpxcp198608/java8
echo "\n========================================================"
echo "[*] docker image pull successfully"
echo "========================================================\n"


SHPATH=$(cd "$(dirname "$0")"; pwd)
echo "\n========================================================"
echo "[*] shell path: $SHPATH"
echo "========================================================\n"

cd 
if [ -d "home" ]; then
	cd home
fi

if [ ! -d "java_app" ];then
	mkdir java_app
fi
cd java_app
if [ ! -d "ex_highway" ];then
	mkdir ex_highway
fi
cd ex_highway
PROJECTPATH=$(cd "$(dirname "$0")"; pwd)
echo "\n========================================================"
echo "[*] project path: $PROJECTPATH"
echo "========================================================\n"
if [ ! -d "res" ];then
	mkdir res &&  mkdir res/datapackage res/images res/upload && mkdir res/images/compound
fi
echo "\n========================================================"
echo "[*] dir config successfully"
echo "========================================================\n"

echo "\n========================================================"
echo "[*] get remote repo to $SHPATH ... "
echo "========================================================\n"
cd $SHPATH
if [ -d "eh_dist" ]; then
	rm -rf eh_dist
fi
git clone https://github.com/patrickxu1986/eh_dist


echo "\n========================================================"
echo "[*] project file copying ..."
echo "========================================================\n"
cd $PROJECTPATH
cp -rf $SHPATH/eh_dist/* .
echo "\n========================================================"
echo "[*] project file copy successfully"
echo "========================================================\n"

cd $SHPATH
if [ -d "eh_dist" ]; then
	rm -rf eh_dist
fi

echo "\n========================================================"
echo "[*] next step is run project, use follow command"
echo "[*] cd $PROJECTPATH"
echo "[*] sh run.sh"
echo "========================================================\n"