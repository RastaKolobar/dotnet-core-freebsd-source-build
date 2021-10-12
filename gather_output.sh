#!/bin/sh

rm -rf output
mkdir output
find runtime/artifacts/packages/Release -name '*.nupkg' -exec cp '{}' output/ \;
find aspnetcore/artifacts/packages/Release -name '*.nupkg' -exec cp '{}' output/ \;
cp installer/artifacts/packages/Release/Shipping/* output/

tar --create --file dotnet-sdk-6.0.100-rc.2.21505.57-freebsd-x64-full.tar -C output .
