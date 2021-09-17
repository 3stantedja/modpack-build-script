#!/bin/sh

cd ./build

for d in */ ; do
    ./gradlew build
done
