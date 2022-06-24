#!/bin/bash

# Based on the build script from DRRP

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Building production build of CDI:CE..."

cd $DIR/../

rm -rf build
mkdir build

cp -R * build/
rm build/maps/*.acs
rm build/maps/*.map
rm build/acs/*.acs
rm -rf build/acs/modules

echo "Building cdi-ce-X.Y.Z.pk3..."

cd build
zip -r -9 ../cdi-ce-X.Y.Z.pk3 .

echo "Done!"

