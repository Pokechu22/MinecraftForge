#!/bin/bash

pushd ..

rm -rf src bin

cp -a src_work src_forge

cp -a forge/forge_client/src/net/* src_forge/minecraft/net/
cp -a forge/forge_common/net/* src_forge/minecraft/net/
cp -a forge/forge_common/net/* src_forge/minecraft_server/net/

cp -a src_forge src

pushd ..

./recompile.sh


