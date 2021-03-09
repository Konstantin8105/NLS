#!/bin/bash

echo "Build and test"


echo "Create templorary folder"
mkdir -p ./testdata/

echo "Unzip code archive"
unzip ./NLS/Codes/NLS_Code.zip -d ./testdata/ > /dev/null
mv "./testdata/NLS Code" "./testdata/NLSCode"

cd ./testdata/NLSCode/src
make

cd ../../..

cd ./testdata/NLSCode/tests/
make

cd ../../..

# Remove templorary data
# rm -rf testdata
