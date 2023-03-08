#!/bin/bash

curl -L -o OpenSiv3D.tgz $1

# Extract & Overwrite
tar -xvf OpenSiv3D.tgz
mkdir sysroot/include || true
cp -r Package/include/Siv3D sysroot/include/OpenSiv3Dv0.6

# Clean up
rm -r Package
rm OpenSiv3D.tgz
