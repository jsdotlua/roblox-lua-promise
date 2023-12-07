#!/bin/sh

set -e

rm -rf roblox/lib

mkdir -p roblox

cp -r lib/ roblox/

./scripts/remove-tests.sh roblox/lib

cp default.project.json roblox/

mkdir -p build

rojo build roblox/default.project.json -o build/roblox-lua-promise.rbxm
